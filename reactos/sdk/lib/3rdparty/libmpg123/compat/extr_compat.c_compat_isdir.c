
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct stat {int st_mode; } ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (int *) ;
 int INVALID_FILE_ATTRIBUTES ;
 scalar_t__ S_ISDIR (int ) ;
 int free (int *) ;
 int stat (char const*,struct stat*) ;
 int * u2wlongpath (char const*) ;

int compat_isdir(const char *path)
{
 int ret = 0;
 struct stat sb;
 if(path && !stat(path, &sb))
 {
  if(S_ISDIR(sb.st_mode))
   ret=1;
 }

 return ret;
}
