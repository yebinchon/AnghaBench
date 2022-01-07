
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uchar ;


 int fclose (int ) ;
 int * stb__out ;
 int stb__outbytes ;
 int stb__outfile ;
 int stb_compress_inner (int *,unsigned int) ;
 int stb_p_fopen (char*,char*) ;

int stb_compress_tofile(char *filename, char *input, unsigned int length)
{




   stb__out = ((void*)0);
   stb__outfile = stb_p_fopen(filename, "wb");
   if (!stb__outfile) return 0;

   stb__outbytes = 0;

   if (!stb_compress_inner((stb_uchar*)input, length))
      return 0;

   fclose(stb__outfile);

   return stb__outbytes;
}
