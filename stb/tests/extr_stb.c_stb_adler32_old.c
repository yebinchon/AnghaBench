
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;
typedef int stb_uchar ;



stb_uint stb_adler32_old(stb_uint adler32, stb_uchar *buffer, stb_uint buflen)
{
   const stb_uint ADLER_MOD = 65521;
   stb_uint s1 = adler32 & 0xffff;
   stb_uint s2 = adler32 >> 16;

   while (buflen-- > 0) {
      s1 += *buffer++; if (s1 > ADLER_MOD) s1 -= ADLER_MOD;
      s2 += s1 ; if (s2 > ADLER_MOD) s2 -= ADLER_MOD;
   }
   return (s2 << 16) + s1;
}
