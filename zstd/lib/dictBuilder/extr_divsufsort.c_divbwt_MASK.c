#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int BUCKET_A_SIZE ; 
 int BUCKET_B_SIZE ; 
 int FUNC0 (unsigned char const*,int*,int*,int*,int,int) ; 
 int FUNC1 (unsigned char const*,int*,int*,int*,int,int,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (unsigned char const*,int*,int*,int*,int,int) ; 

int
FUNC5(const unsigned char *T, unsigned char *U, int *A, int n, unsigned char * num_indexes, int * indexes, int openMP) {
  int *B;
  int *bucket_A, *bucket_B;
  int m, pidx, i;

  /* Check arguments. */
  if((T == NULL) || (U == NULL) || (n < 0)) { return -1; }
  else if(n <= 1) { if(n == 1) { U[0] = T[0]; } return n; }

  if((B = A) == NULL) { B = (int *)FUNC3((size_t)(n + 1) * sizeof(int)); }
  bucket_A = (int *)FUNC3(BUCKET_A_SIZE * sizeof(int));
  bucket_B = (int *)FUNC3(BUCKET_B_SIZE * sizeof(int));

  /* Burrows-Wheeler Transform. */
  if((B != NULL) && (bucket_A != NULL) && (bucket_B != NULL)) {
    m = FUNC4(T, B, bucket_A, bucket_B, n, openMP);

    if (num_indexes == NULL || indexes == NULL) {
        pidx = FUNC0(T, B, bucket_A, bucket_B, n, m);
    } else {
        pidx = FUNC1(T, B, bucket_A, bucket_B, n, m, num_indexes, indexes);
    }

    /* Copy to output string. */
    U[0] = T[n - 1];
    for(i = 0; i < pidx; ++i) { U[i + 1] = (unsigned char)B[i]; }
    for(i += 1; i < n; ++i) { U[i] = (unsigned char)B[i]; }
    pidx += 1;
  } else {
    pidx = -2;
  }

  FUNC2(bucket_B);
  FUNC2(bucket_A);
  if(A == NULL) { FUNC2(B); }

  return pidx;
}