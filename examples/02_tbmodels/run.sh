tbmodels parse --pos-kind=nearest_atom -f wannier_output -p wannier90 -o silicon_model.hdf5
tbmodels symmetrize -i silicon_model.hdf5 -s symmetries.hdf5 -o silicon_model_symm.hdf5
