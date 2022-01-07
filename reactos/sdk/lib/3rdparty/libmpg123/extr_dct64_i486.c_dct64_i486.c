
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;


 int TOINT (int ) ;
 int dct64_1_486 (int*,int*,int*,int*) ;

void dct64_i486(int *a,int *b,real *samples)
{
  int bufs[64];
  int i;
  int *p = bufs;
  register double const scale = ((65536.0 * 32) + 1) * 65536.0;

  for(i=0;i<32;i++) {
    *((double *) (p++)) = scale + *samples++;
  }


  dct64_1_486(a,b,bufs+32,bufs);
}
