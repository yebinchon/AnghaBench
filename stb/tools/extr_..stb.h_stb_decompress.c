
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;
typedef int stb_uchar ;


 int assert (int) ;
 int* stb__barrier ;
 int* stb__barrier2 ;
 int* stb__barrier3 ;
 int* stb__barrier4 ;
 int* stb__dout ;
 int stb__in4 (int) ;
 int stb_adler32 (int,int*,int) ;
 int stb_decompress_length (int*) ;
 int* stb_decompress_token (int*) ;

stb_uint stb_decompress(stb_uchar *output, stb_uchar *i, stb_uint length)
{
   stb_uint olen;
   if (stb__in4(0) != 0x57bC0000) return 0;
   if (stb__in4(4) != 0) return 0;
   olen = stb_decompress_length(i);
   stb__barrier2 = i;
   stb__barrier3 = i+length;
   stb__barrier = output + olen;
   stb__barrier4 = output;
   i += 16;

   stb__dout = output;
   while (1) {
      stb_uchar *old_i = i;
      i = stb_decompress_token(i);
      if (i == old_i) {
         if (*i == 0x05 && i[1] == 0xfa) {
            assert(stb__dout == output + olen);
            if (stb__dout != output + olen) return 0;
            if (stb_adler32(1, output, olen) != (stb_uint) stb__in4(2))
               return 0;
            return olen;
         } else {
            assert(0);
            return 0;
         }
      }
      assert(stb__dout <= output + olen);
      if (stb__dout > output + olen)
         return 0;
   }
}
