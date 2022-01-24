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
 int M_PI ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int n, float *A, float *B, float *C)
{
   int n4 = n >> 2, n8 = n >> 3;
   int k,k2;

   for (k=k2=0; k < n4; ++k,k2+=2) {
      A[k2  ] = (float)  FUNC0(4*k*M_PI/n);
      A[k2+1] = (float) -FUNC1(4*k*M_PI/n);
      B[k2  ] = (float)  FUNC0((k2+1)*M_PI/n/2) * 0.5f;
      B[k2+1] = (float)  FUNC1((k2+1)*M_PI/n/2) * 0.5f;
   }
   for (k=k2=0; k < n8; ++k,k2+=2) {
      C[k2  ] = (float)  FUNC0(2*(k2+1)*M_PI/n);
      C[k2+1] = (float) -FUNC1(2*(k2+1)*M_PI/n);
   }
}