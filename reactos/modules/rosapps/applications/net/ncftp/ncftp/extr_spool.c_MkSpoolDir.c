
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ MkDirs (char*,int) ;
 int OurDirectoryPath (char*,size_t,int ) ;
 char* gOurDirectoryPath ;
 int kSpoolDir ;
 int perror (char*) ;
 scalar_t__ stat (char*,struct stat*) ;

int
MkSpoolDir(char *sdir, size_t size)
{
 struct stat st;
 *sdir = '\0';


 if (gOurDirectoryPath[0] != '\0') {
  (void) OurDirectoryPath(sdir, size, kSpoolDir);
  if ((stat(sdir, &st) < 0) && (MkDirs(sdir, 00700) < 0)) {
   perror(sdir);
   return (-1);
  } else {
   return (0);
  }
 }
 return (-1);
}
