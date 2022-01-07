
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
src_int_to_float_array (const int *in, float *out, int len)
{
 while (len)
 { len -- ;
  out [len] = (float) (in [len] / (8.0 * 0x10000000)) ;
  } ;

 return ;
}
