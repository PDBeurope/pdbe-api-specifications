#!/bin/bash

# GitHub API Batch Script to Update Repository Descriptions
# This script updates descriptions for all public repositories across 3D-Beacons, PDBe-KB, and PDBeurope

# REQUIRED: Set your GitHub token before running
# You can generate one at: https://github.com/settings/tokens
# Required scopes: repo (for private repos) or public_repo (for public repos)

GITHUB_TOKEN="YOUR_GITHUB_TOKEN_HERE"

if [ "$GITHUB_TOKEN" = "YOUR_GITHUB_TOKEN_HERE" ]; then
    echo "ERROR: Please set your GITHUB_TOKEN environment variable or replace in script"
    echo "Generate token at: https://github.com/settings/tokens"
    exit 1
fi

echo "Starting repository description updates..."
echo "Using token: ${GITHUB_TOKEN:0:8}..."
echo ""

# Function to update repository description
update_repo() {
    local owner=$1
    local repo=$2
    local description=$3
    
    echo "Updating $owner/$repo..."
    
    RESPONSE=$(curl -s -X PATCH \
        -H "Authorization: token $GITHUB_TOKEN" \
        -H "Accept: application/vnd.github.v3+json" \
        -d "{\"description\":\"$description\"}" \
        "https://api.github.com/repos/$owner/$repo")
    
    if echo "$RESPONSE" | grep -q '"message"'; then
        echo "  ERROR: $(echo "$RESPONSE" | grep -o '"message":"[^"]*"')"
    else
        STATUS=$(echo "$RESPONSE" | grep -o '"updated_at":"[^"]*"')
        echo "  ✓ Updated successfully"
    fi
}

# ============================================================================
# 3D-Beacons Repositories (5 repos)
# ============================================================================
echo "=== Updating 3D-Beacons Repositories ==="

update_repo "3D-Beacons" "3d-beacons-hub-api" "API service for the 3D-Beacons hub infrastructure - handles beacon registration and discovery for 3D structural biology data"

update_repo "3D-Beacons" "3d-beacons-registry" "Registry service for 3D-Beacons beacon endpoints - tracks available 3D model servers and their capabilities"

update_repo "3D-Beacons" "3D-Beacons" "Main repository for the 3D-Beacons initiative - tracking beacon infrastructure for 3D structural biology data"

update_repo "3D-Beacons" "3d-beacons-specifications" "Technical specifications for the 3D-Beacons protocol - defines beacon formats and API standards"

update_repo "3D-Beacons" "3d-beacons-front-end" "Frontend interface for the 3D-Beacons platform - user interface for browsing and searching 3D model servers"

echo ""

# ============================================================================
# PDBe-KB Repositories (21 repos)
# ============================================================================
echo "=== Updating PDBe-KB Repositories ==="

update_repo "PDBe-KB" "component-polyprotein-section" "TypeScript web component displaying polyprotein sequence sections in protein structures"

update_repo "PDBe-KB" "process-complex-data" "Python utility for processing and analyzing macromolecular complex data from PDB"

update_repo "PDBe-KB" "funpdbe-schema" "Schema definitions and validation for FunPDBe protein function data model in Python"

update_repo "PDBe-KB" "pdbe_covariations" "Python-based analysis of evolutionary covariations in protein sequences and structures"

update_repo "PDBe-KB" "component-molstar-dialog" "TypeScript dialog component for integrating MolStar 3D structure viewer in PDBe-KB interfaces"

update_repo "PDBe-KB" "component-multi-view" "TypeScript multi-view web component for displaying multiple protein structure data panels"

update_repo "PDBe-KB" "component-summary-icons" "TypeScript component displaying summary icons for protein structure features and annotations"

update_repo "PDBe-KB" "funpdbe-validator" "Validation tool for checking FunPDBe protein function data against schema specifications"

update_repo "PDBe-KB" "component-ping-resources" "TypeScript component for checking availability and response times of external protein data resources"

update_repo "PDBe-KB" "component-summary-text" "TypeScript component for displaying summary text and key annotations for protein structures"

update_repo "PDBe-KB" "pdbe-kb-uniprot-variant-import" "Python tool for importing and mapping UniProt variant data into PDBe-KB knowledge base"

update_repo "PDBe-KB" "component-image-gallery" "TypeScript web component for displaying galleries of protein structure images and visualizations"

update_repo "PDBe-KB" "component-similar-proteins" "TypeScript component for displaying and searching similar protein structures using PDBe-KB"

update_repo "PDBe-KB" "component-csv-exporter" "TypeScript component for exporting protein structure data and annotations as CSV files"

update_repo "PDBe-KB" "component-tutorial" "TypeScript interactive tutorial component for guiding users through PDBe-KB features"

update_repo "PDBe-KB" "component-download" "TypeScript component providing download options for protein structure data in various formats"

update_repo "PDBe-KB" "component-superpose" "TypeScript component for structural superposition and alignment of protein structures"

update_repo "PDBe-KB" "component-pdbe-kb-header" "TypeScript header component displaying PDBe-KB navigation and branding across all pages"

update_repo "PDBe-KB" "component-coverage-table" "TypeScript component for displaying coverage statistics and annotation completeness in tabular format"

update_repo "PDBe-KB" "component-literature-panel" "TypeScript panel component displaying relevant scientific literature for protein structures"

update_repo "PDBe-KB" "component-representative-structures" "TypeScript component for displaying representative structures from protein family clusters"

echo ""

# ============================================================================
# PDBeurope Repositories (12 repos)
# ============================================================================
echo "=== Updating PDBeurope Repositories ==="

update_repo "PDBeurope" "InvestigationCIF" "Documentation for the mmcif Investigation dictionary - tracks metadata schema for mmCIF files in structural biology"

update_repo "PDBeurope" "surface-calculator-x" "TypeScript-based tool for calculating molecular surface areas and properties of protein structures"

update_repo "PDBeurope" "afdb-notebooks" "Jupyter notebooks for accessing and analyzing AlphaFold Protein Structure Database data"

update_repo "PDBeurope" "heatmap-component" "Interactive canvas-based heatmap visualization component for displaying structural biology data"

update_repo "PDBeurope" "surface-calculator" "Tool for calculating molecular surface areas and geometric properties of 3D protein structures"

update_repo "PDBeurope" "pdbe-notebooks" "Collection of Jupyter notebooks for PDBe data analysis and structural biology research"

update_repo "PDBeurope" "PDBe-Pipelines" "Automated processing pipelines for PDBe structural biology data workflows and data integration"

update_repo "PDBeurope" "ner_for_protein_structures" "Named entity recognition pipeline for extracting structured information from protein structure literature"

update_repo "PDBeurope" "pdb-prints" "JavaScript-based tool for visualizing and analyzing PDB metadata in structural biology"

update_repo "PDBeurope" "pdb-links" "Component for displaying links to related PDB entries and external resources"

update_repo "PDBeurope" "pdbe-rna-tools" "Tools and utilities for RNA structure analysis and visualization from the PDB"

update_repo "PDBeurope" "pdbe-api-specifications" "API documentation and specifications for PDBe protein data services and endpoints"

echo ""
echo "=== Summary ==="
echo "Completed updates for 38 repositories across 3 organizations"
echo "3D-Beacons: 5 repositories"
echo "PDBe-KB: 21 repositories"
echo "PDBeurope: 12 repositories"
