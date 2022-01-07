
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raw_buffer ;
typedef int FILE ;


 int fclose (int *) ;
 int feof (int *) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ malloc (int) ;
 int * stb__fopen (char*,char*) ;
 scalar_t__ stb_feq (char*,char*) ;

int stb_copyfile(char *src, char *dest)
{
   char raw_buffer[1024];
   char *buffer;
   int buf_size = 65536;

   FILE *f, *g;


   if (stb_feq(src, dest)) return 1;


   f = stb__fopen(src, "rb");
   if (f == ((void*)0)) return 0;


   g = stb__fopen(dest, "wb");
   if (g == ((void*)0)) {
      fclose(f);
      return 0;
   }

   buffer = (char *) malloc(buf_size);
   if (buffer == ((void*)0)) {
      buffer = raw_buffer;
      buf_size = sizeof(raw_buffer);
   }

   while (!feof(f)) {
      int n = fread(buffer, 1, buf_size, f);
      if (n != 0)
         fwrite(buffer, 1, n, g);
   }

   fclose(f);
   if (buffer != raw_buffer)
      free(buffer);

   fclose(g);
   return 1;
}
