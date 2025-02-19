
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_CLIPS_NEGATIVE ;
 scalar_t__ CPU_CLIPS_POSITIVE ;
 int lrint (double) ;

void
src_float_to_int_array (const float *in, int *out, int len)
{ double scaled_value ;

 while (len)
 { len -- ;

  scaled_value = in [len] * (8.0 * 0x10000000) ;
  if (CPU_CLIPS_POSITIVE == 0 && scaled_value >= (1.0 * 0x7FFFFFFF))
  { out [len] = 0x7fffffff ;
   continue ;
   } ;
  if (CPU_CLIPS_NEGATIVE == 0 && scaled_value <= (-8.0 * 0x10000000))
  { out [len] = -1 - 0x7fffffff ;
   continue ;
   } ;

  out [len] = lrint (scaled_value) ;
  } ;

}
