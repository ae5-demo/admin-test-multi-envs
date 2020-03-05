# update anaconda-project and prepare all envs
conda update anaconda-project -y && anaconda-project prepare --all
julia scripts/ijulia.jl
jupyter kernelspec install julia-1.1 --prefix $CONDA_PREFIX
