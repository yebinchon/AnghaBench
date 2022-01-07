
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z ;
typedef int y ;
typedef int x ;
typedef int ptrdiff_t ;
typedef int n ;
typedef int __m128 ;


 int _mm_add_ps (int ,int ) ;
 int _mm_loadu_ps (int ) ;
 int _mm_mul_ps (int ,int ) ;
 int _mm_set_ps1 (float const) ;
 int _mm_storeu_ps (int ,int ) ;

__attribute__((used)) static void THFloatVector_cadd_SSE(float *z, const float *x, const float *y, const float c, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128 XMM7 = _mm_set_ps1(c);
  __m128 XMM0, XMM2;
  for (i=0; i<=((n)-4); i+=4) {
    XMM0 = _mm_loadu_ps((x)+i);
    XMM2 = _mm_loadu_ps((y)+i);
    XMM2 = _mm_mul_ps(XMM2, XMM7);
    XMM2 = _mm_add_ps(XMM0, XMM2);
    _mm_storeu_ps((z)+i, XMM2);
  }
  for (; i<(n); i++) {
    z[i] = x[i] + c * y[i];
  }
}
