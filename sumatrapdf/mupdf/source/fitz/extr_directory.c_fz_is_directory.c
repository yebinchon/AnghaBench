
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int fz_context ;


 int S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

int
fz_is_directory(fz_context *ctx, const char *path)
{
 struct stat info;

 if (stat(path, &info) < 0)
  return 0;

 return S_ISDIR(info.st_mode);
}
