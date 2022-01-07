
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUCKET_A_SIZE ;
 int BUCKET_B_SIZE ;
 int construct_BWT (unsigned char const*,int*,int*,int*,int,int) ;
 int construct_BWT_indexes (unsigned char const*,int*,int*,int*,int,int,unsigned char*,int*) ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int sort_typeBstar (unsigned char const*,int*,int*,int*,int,int) ;

int
divbwt(const unsigned char *T, unsigned char *U, int *A, int n, unsigned char * num_indexes, int * indexes, int openMP) {
  int *B;
  int *bucket_A, *bucket_B;
  int m, pidx, i;


  if((T == ((void*)0)) || (U == ((void*)0)) || (n < 0)) { return -1; }
  else if(n <= 1) { if(n == 1) { U[0] = T[0]; } return n; }

  if((B = A) == ((void*)0)) { B = (int *)malloc((size_t)(n + 1) * sizeof(int)); }
  bucket_A = (int *)malloc(BUCKET_A_SIZE * sizeof(int));
  bucket_B = (int *)malloc(BUCKET_B_SIZE * sizeof(int));


  if((B != ((void*)0)) && (bucket_A != ((void*)0)) && (bucket_B != ((void*)0))) {
    m = sort_typeBstar(T, B, bucket_A, bucket_B, n, openMP);

    if (num_indexes == ((void*)0) || indexes == ((void*)0)) {
        pidx = construct_BWT(T, B, bucket_A, bucket_B, n, m);
    } else {
        pidx = construct_BWT_indexes(T, B, bucket_A, bucket_B, n, m, num_indexes, indexes);
    }


    U[0] = T[n - 1];
    for(i = 0; i < pidx; ++i) { U[i + 1] = (unsigned char)B[i]; }
    for(i += 1; i < n; ++i) { U[i] = (unsigned char)B[i]; }
    pidx += 1;
  } else {
    pidx = -2;
  }

  free(bucket_B);
  free(bucket_A);
  if(A == ((void*)0)) { free(B); }

  return pidx;
}
