
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (scalar_t__) ;
 scalar_t__ stb__outfile ;
 int stb_compress_streaming_end () ;

void stb_compress_stream_end(int close)
{
   stb_compress_streaming_end();
   if (close && stb__outfile) {
      fclose(stb__outfile);
   }
}
