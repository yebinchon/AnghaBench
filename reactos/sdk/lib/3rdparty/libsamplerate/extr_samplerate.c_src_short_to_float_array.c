
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
src_short_to_float_array (const short *in, float *out, int len)
{
 while (len)
 { len -- ;
  out [len] = (float) (in [len] / (1.0 * 0x8000)) ;
  } ;

 return ;
}
