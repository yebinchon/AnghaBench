
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint32_t ;
typedef int __int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int GET_HIGH_WORD (int,double) ;
 int INSERT_WORDS (double,int,int) ;
 double one ;

double modf(double x, double *iptr)
{
 __int32_t i0,i1,j_0;
 __uint32_t i;
 EXTRACT_WORDS(i0,i1,x);
 j_0 = ((i0>>20)&0x7ff)-0x3ff;
 if(j_0<20) {
     if(j_0<0) {
         INSERT_WORDS(*iptr,i0&0x80000000U,0);
  return x;
     } else {
  i = (0x000fffff)>>j_0;
  if(((i0&i)|i1)==0) {
      __uint32_t high;
      *iptr = x;
      GET_HIGH_WORD(high,x);
      INSERT_WORDS(x,high&0x80000000U,0);
      return x;
  } else {
      INSERT_WORDS(*iptr,i0&(~i),0);
      return x - *iptr;
  }
     }
 } else if (j_0>51) {
     __uint32_t high;
     *iptr = x*one;
     GET_HIGH_WORD(high,x);
     INSERT_WORDS(x,high&0x80000000U,0);
     return x;
 } else {
     i = ((__uint32_t)(0xffffffffU))>>(j_0-20);
     if((i1&i)==0) {
         __uint32_t high;
  *iptr = x;
  GET_HIGH_WORD(high,x);
  INSERT_WORDS(x,high&0x80000000U,0);
  return x;
     } else {
         INSERT_WORDS(*iptr,i0,i1&(~i));
  return x - *iptr;
     }
 }
}
