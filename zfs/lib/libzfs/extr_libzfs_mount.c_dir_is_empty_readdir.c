
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent64 {int d_name; } ;
typedef int boolean_t ;
typedef int DIR ;


 int AT_FDCWD ;
 int B_FALSE ;
 int B_TRUE ;
 int O_CLOEXEC ;
 int O_LARGEFILE ;
 int O_NDELAY ;
 int O_RDONLY ;
 int close (int) ;
 int closedir (int *) ;
 int * fdopendir (int) ;
 int openat (int ,char const*,int,int ) ;
 struct dirent64* readdir64 (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static boolean_t
dir_is_empty_readdir(const char *dirname)
{
 DIR *dirp;
 struct dirent64 *dp;
 int dirfd;

 if ((dirfd = openat(AT_FDCWD, dirname,
     O_RDONLY | O_NDELAY | O_LARGEFILE | O_CLOEXEC, 0)) < 0) {
  return (B_TRUE);
 }

 if ((dirp = fdopendir(dirfd)) == ((void*)0)) {
  (void) close(dirfd);
  return (B_TRUE);
 }

 while ((dp = readdir64(dirp)) != ((void*)0)) {

  if (strcmp(dp->d_name, ".") == 0 ||
      strcmp(dp->d_name, "..") == 0)
   continue;

  (void) closedir(dirp);
  return (B_FALSE);
 }

 (void) closedir(dirp);
 return (B_TRUE);
}
