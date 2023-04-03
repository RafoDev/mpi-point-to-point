all: clean b nb
b: 
	mpicc -o pp-blocking.exe pp-blocking.cc
nb: 
	mpicc -o pp-non-blocking.exe pp-non-blocking.cc
run-b:
	mpiexec -n 2 ./pp-blocking.exe
run-nb:
	mpiexec -n 2 ./pp-non-blocking.exe
clean:
	rm -f *.exe 