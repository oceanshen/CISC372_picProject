image:image.c image.h
	gcc -g image.c -o image -lm

omp:image-openMP.c image.h
	gcc -fopenmp -g image-openMP.c -o image-openMP -lm

pthreads:image-pthread.c image.h
	gcc -g image-pthread.c -o image-pthread -lm -pthread

clean:
	rm -f image output.png image-openMP output-openMP.png image-pthread output-pthread.png
