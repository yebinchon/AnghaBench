
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
struct TYPE_2__ {int dwFileAttributes; int cFileName; } ;
struct compat_dir {int path; int dir; TYPE_1__ d; scalar_t__ gotone; int ffn; } ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ FindNextFileW (int ,TYPE_1__*) ;
 scalar_t__ S_ISDIR (int ) ;
 char* compat_catpath (int ,int ) ;
 char* compat_strdup (int ) ;
 int free (char*) ;
 struct dirent* readdir (int ) ;
 int stat (char*,struct stat*) ;
 int win32_wide_utf8 (int ,char**,int *) ;

char* compat_nextdir(struct compat_dir *cd)
{
 if(!cd)
  return ((void*)0);
 {
  struct dirent *dp;
  while((dp = readdir(cd->dir)))
  {
   struct stat fst;
   char *fullpath = compat_catpath(cd->path, dp->d_name);
   if(fullpath && !stat(fullpath, &fst) && S_ISDIR(fst.st_mode))
   {
    free(fullpath);
    return compat_strdup(dp->d_name);
   }
   free(fullpath);
  }
 }

 return ((void*)0);
}
