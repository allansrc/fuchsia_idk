export PATH=${FUCHSIA_DIR}/prebuilt/third_party/cmake/mac-x64/bin:${PATH}
export PATH=${FUCHSIA_DIR}/prebuilt/third_party/ninja/mac-x64/bin:${PATH}

LLVM_SRCDIR=${HOME}/llvm/llvm-project
git clone https://github.com/llvm/llvm-project ${LLVM_SRCDIR}

cd ${LLVM_SRCDIR}
git checkout ${REVISON_NUMBER}

IDK_DIR=${HOME}/fuchsia-idk
cipd install fuchsia/sdk/core/mac-amd64 latest -root ${IDK_DIR}
