
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
typedef int f ;


 int O_TRUNC ;
 int O_WRONLY ;
 int OurDirectoryPath (char*,int,int ) ;
 int close (int) ;
 char* gOurDirectoryPath ;
 int kSpoolLog ;
 int open (char*,int,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int time (scalar_t__*) ;

void
TruncBatchLog(void)
{
 char f[256];
 struct stat st;
 time_t t;
 int fd;

 if (gOurDirectoryPath[0] != '\0') {
  time(&t);
  t -= 86400;
  (void) OurDirectoryPath(f, sizeof(f), kSpoolLog);
  if ((stat(f, &st) == 0) && (st.st_mtime < t)) {




   fd = open(f, O_WRONLY|O_TRUNC, 00600);
   if (fd >= 0)
    close(fd);
  }
 }
}
