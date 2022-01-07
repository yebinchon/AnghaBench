
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;
typedef int stb_uchar ;


 int * stb__out ;
 int * stb__outfile ;
 int stb_compress_inner (int *,int ) ;

stb_uint stb_compress(stb_uchar *out, stb_uchar *input, stb_uint length)
{
   stb__out = out;
   stb__outfile = ((void*)0);

   stb_compress_inner(input, length);

   return (stb_uint) (stb__out - out);
}
