
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int PATH_MAX ;
 int convert_to_accel_path (int *,char*,char*,size_t) ;
 int realpath (char const*,char*) ;

__attribute__((used)) static int get_accelerator_filename(fz_context *ctx, char outname[], size_t len, const char *filename)
{
 char absname[PATH_MAX];
 if (!realpath(filename, absname))
  return 0;
 if (!convert_to_accel_path(ctx, outname, absname, len))
  return 0;
 return 1;
}
