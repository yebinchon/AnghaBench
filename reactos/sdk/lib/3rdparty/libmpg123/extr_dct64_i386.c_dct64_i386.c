
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;


 int dct64_1 (int *,int *,int *,int *,int *) ;

void dct64_i386(real *a,real *b,real *c)
{
  real bufs[0x40];
  dct64_1(a,b,bufs,bufs+0x20,c);
}
