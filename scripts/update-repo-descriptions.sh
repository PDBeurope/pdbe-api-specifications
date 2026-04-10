#!/bin/bash

# Script to update repository descriptions for 3D-Beacons, PDBeurope, and PDBe-KB

# 3D-Beacons repositories
gh repo edit 3D-Beacons/3d-beacons-hub-api --description "API service for the 3D-Beacons hub infrastructure - handles beacon registration and discovery for 3D structural biology data"
gh repo edit 3D-Beacons/3d-beacons-registry --description "Registry service for 3D-Beacons beacon endpoints - tracks available 3D model servers and their capabilities"
gh repo edit 3D-Beacons/3D-Beacons --description "Main repository for the 3D-Beacons initiative - tracking beacon infrastructure for 3D structural biology data"
gh repo edit 3D-Beacons/3d-beacons-specifications --description "Technical specifications for the 3D-Beacons protocol - defines beacon formats and API standards"
gh repo edit 3D-Beacons/3d-beacons-front-end --description "Frontend interface for the 3D-Beacons platform - user interface for browsing and searching 3D model servers"

# PDBe-KB repositories
gh repo edit PDBe-KB/component-polyprotein-section --description "TypeScript web component displaying polyprotein sequence sections in protein structures"
gh repo edit PDBe-KB/process-complex-data --description "Python utility for processing and analyzing macromolecular complex data from PDB"
gh repo edit PDBe-KB/funpdbe-schema --description "Schema definitions and validation for FunPDBe protein function data model in Python"
gh repo edit PDBe-KB/pdbe_covariations --description "Python-based analysis of evolutionary covariations in protein sequences and structures"
gh repo edit PDBe-KB/component-molstar-dialog --description "TypeScript dialog component for integrating MolStar 3D structure viewer in PDBe-KB interfaces"
gh repo edit PDBe-KB/component-multi-view --description "TypeScript multi-view web component for displaying multiple protein structure data panels"
gh repo edit PDBe-KB/component-summary-icons --description "TypeScript component displaying summary icons for protein structure features and annotations"
gh repo edit PDBe-KB/funpdbe-validator --description "Validation tool for checking FunPDBe protein function data against schema specifications"
gh repo edit PDBe-KB/component-ping-resources --description "TypeScript component for checking availability and response times of external protein data resources"
gh repo edit PDBe-KB/component-summary-text --description "TypeScript component for displaying summary text and key annotations for protein structures"
gh repo edit PDBe-KB/pdbe-kb-uniprot-variant-import --description "Python tool for importing and mapping UniProt variant data into PDBe-KB knowledge base"
gh repo edit PDBe-KB/component-image-gallery --description "TypeScript web component for displaying galleries of protein structure images and visualizations"
gh repo edit PDBe-KB/component-similar-proteins --description "TypeScript component for displaying and searching similar protein structures using PDBe-KB"
gh repo edit PDBe-KB/component-csv-exporter --description "TypeScript component for exporting protein structure data and annotations as CSV files"
gh repo edit PDBe-KB/component-tutorial --description "TypeScript interactive tutorial component for guiding users through PDBe-KB features"
gh repo edit PDBe-KB/component-download --description "TypeScript component providing download options for protein structure data in various formats"
gh repo edit PDBe-KB/component-superpose --description "TypeScript component for structural superposition and alignment of protein structures"
gh repo edit PDBe-KB/component-pdbe-kb-header --description "TypeScript header component displaying PDBe-KB navigation and branding across all pages"
gh repo edit PDBe-KB/component-coverage-table --description "TypeScript component for displaying coverage statistics and annotation completeness in tabular format"
gh repo edit PDBe-KB/component-literature-panel --description "TypeScript panel component displaying relevant scientific literature for protein structures"
gh repo edit PDBe-KB/component-representative-structures --description "TypeScript component for displaying representative structures from protein family clusters"

# PDBeurope repositories
gh repo edit PDBeurope/InvestigationCIF --description "Documentation for the mmcif Investigation dictionary - tracks metadata schema for mmCIF files in structural biology"
gh repo edit PDBeurope/surface-calculator-x --description "TypeScript-based tool for calculating molecular surface areas and properties of protein structures"
gh repo edit PDBeurope/afdb-notebooks --description "Jupyter notebooks for accessing and analyzing AlphaFold Protein Structure Database data"
gh repo edit PDBeurope/heatmap-component --description "Interactive canvas-based heatmap visualization component for displaying structural biology data"
gh repo edit PDBeurope/surface-calculator --description "Tool for calculating molecular surface areas and geometric properties of 3D protein structures"
gh repo edit PDBeurope/pdbe-notebooks --description "Collection of Jupyter notebooks for PDBe data analysis and structural biology research"
gh repo edit PDBeurope/PDBe-Pipelines --description "Automated processing pipelines for PDBe structural biology data workflows and data integration"
gh repo edit PDBeurope/ner_for_protein_structures --description "Named entity recognition pipeline for extracting structured information from protein structure literature"
gh repo edit PDBeurope/pdb-prints --description "JavaScript-based tool for visualizing and analyzing PDB metadata in structural biology"
gh repo edit PDBeurope/pdb-links --description "Component for displaying links to related PDB entries and external resources"
gh repo edit PDBeurope/pdbe-rna-tools --description "Tools and utilities for RNA structure analysis and visualization from the PDB"
gh repo edit PDBeurope/pdbe-api-specifications --description "API documentation and specifications for PDBe protein data services and endpoints"

echo "Repository descriptions updated successfully!"
