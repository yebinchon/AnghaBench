
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int fprintf (int ,char*,char*) ;
 size_t fwrite (unsigned char*,int,size_t,int *) ;
 int * stb__fopen (char*,char*) ;
 int stderr ;

int stb_filewrite(char *filename, void *data, size_t length)
{
   FILE *f = stb__fopen(filename, "wb");
   if (f) {
      unsigned char *data_ptr = (unsigned char *) data;
      size_t remaining = length;
      while (remaining > 0) {
         size_t len2 = remaining > 65536 ? 65536 : remaining;
         size_t len3 = fwrite(data_ptr, 1, len2, f);
         if (len2 != len3) {
            fprintf(stderr, "Failed while writing %s\n", filename);
            break;
         }
         remaining -= len2;
         data_ptr += len2;
      }
      fclose(f);
   }
   return f != ((void*)0);
}
