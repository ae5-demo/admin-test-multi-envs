# update anaconda-project and prepare all envs
conda update anaconda-project -y && anaconda-project prepare --all
conda activate Julia

# install ijulia kernel - requires internet access..
julia scripts/ijulia.jl

# install kernel in local jupyter
jupyter kernelspec install julia-1.1 --prefix $CONDA_PREFIX
