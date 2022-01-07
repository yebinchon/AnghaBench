
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathName ;
typedef int path2 ;


 int OurDirectoryPath (char*,int,int ) ;
 int STRNCAT (char*,char*) ;
 scalar_t__ getpid () ;
 int kBookmarkFileName ;
 int kTmpBookmarkFileName ;
 int remove (char*) ;
 scalar_t__ rename (char*,char*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int
SwapBookmarkFiles(void)
{
 char pidStr[32];
 char pathName[256], path2[256];

 (void) OurDirectoryPath(path2, sizeof(path2), kBookmarkFileName);
 (void) OurDirectoryPath(pathName, sizeof(pathName), kTmpBookmarkFileName);
 (void) sprintf(pidStr, "-%u.txt", (unsigned int) getpid());
 (void) STRNCAT(pathName, pidStr);

 (void) remove(path2);
 if (rename(pathName, path2) < 0) {
  return (-1);
 }
 return (0);
}
