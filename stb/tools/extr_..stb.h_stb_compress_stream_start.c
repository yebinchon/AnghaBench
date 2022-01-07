
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * stb__out ;
 int * stb__outfile ;
 int stb_compress_streaming_start () ;

int stb_compress_stream_start(FILE *f)
{
   stb__out = ((void*)0);
   stb__outfile = f;

   if (f == ((void*)0))
      return 0;

   if (!stb_compress_streaming_start())
      return 0;

   return 1;
}
