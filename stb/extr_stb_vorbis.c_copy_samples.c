
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FASTDEF (int ) ;
 int FAST_SCALED_FLOAT_TO_INT (int ,float,int) ;
 int check_endianness () ;
 int temp ;

__attribute__((used)) static void copy_samples(short *dest, float *src, int len)
{
   int i;
   check_endianness();
   for (i=0; i < len; ++i) {
      FASTDEF(temp);
      int v = FAST_SCALED_FLOAT_TO_INT(temp, src[i],15);
      if ((unsigned int) (v + 32768) > 65535)
         v = v < 0 ? -32768 : 32767;
      dest[i] = v;
   }
}
