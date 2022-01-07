
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int * fz_fopen_utf8 (char const*,char*) ;

int
fz_file_exists(fz_context *ctx, const char *path)
{
 FILE *file;



 file = fopen(path, "rb");

 if (file)
  fclose(file);
 return !!file;
}
