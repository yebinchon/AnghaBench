
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;
typedef int stb_uchar ;


 int assert (int) ;
 int free (int **) ;
 scalar_t__ malloc (int) ;
 int outliterals (int *,int) ;
 int stb__hashsize ;
 int stb__running_adler ;
 int stb__window ;
 int stb_compress_chunk (int *,int *,int *,int,int*,int **,int) ;
 int stb_out (int) ;
 int stb_out2 (int) ;
 int stb_out4 (int) ;

__attribute__((used)) static int stb_compress_inner(stb_uchar *input, stb_uint length)
{
   int literals = 0;
   stb_uint len,i;

   stb_uchar **chash;
   chash = (stb_uchar**) malloc(stb__hashsize * sizeof(stb_uchar*));
   if (chash == ((void*)0)) return 0;
   for (i=0; i < stb__hashsize; ++i)
      chash[i] = ((void*)0);


   stb_out(0x57); stb_out(0xbc);
   stb_out2(0);

   stb_out4(0);
   stb_out4(length);
   stb_out4(stb__window);

   stb__running_adler = 1;

   len = stb_compress_chunk(input, input, input+length, length, &literals, chash, stb__hashsize-1);
   assert(len == length);

   outliterals(input+length - literals, literals);

   free(chash);

   stb_out2(0x05fa);

   stb_out4(stb__running_adler);

   return 1;
}
