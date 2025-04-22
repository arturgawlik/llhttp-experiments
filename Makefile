LLHTTP_LOCAL_REPO=/home/artur-gawlik/git/llhttp
DEPS=/home/artur-gawlik/git/llhttp-experiments/deps
LLHTTP_DEPS=${DEPS}/llhttp
LLHTTP_DEPS_BUILD=${LLHTTP_DEPS}/build/
LLHTTP_DEPS_BUILD_LIB=${LLHTTP_DEPS_BUILD}libllhttp.a

build: 
	clang ./main.c -o ./main -O0  -I${LLHTTP_DEPS_BUILD} ${LLHTTP_DEPS_BUILD_LIB}

link-llhttp:
	ln -s ${LLHTTP_LOCAL_REPO} ${LLHTTP_DEPS}
