
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int penv ;


 int AT_FDCWD ;
 int AT_SYMLINK_FOLLOW ;
 int O_EXCL ;
 int O_RDWR ;
 int O_TMPFILE ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* getenv (char*) ;
 scalar_t__ linkat (int ,char*,int ,char*,int ) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 int stdout ;

int
main(int argc, char *argv[])
{
 int i, fd;
 char spath[1024], dpath[1024];
 char *penv[] = {"TESTDIR", "TESTFILE0"};
 struct stat sbuf;

 (void) fprintf(stdout, "Verify O_EXCL tmpfile cannot be linked.\n");




 for (i = 0; i < sizeof (penv) / sizeof (char *); i++) {
  if ((penv[i] = getenv(penv[i])) == ((void*)0)) {
   (void) fprintf(stderr, "getenv(penv[%d])\n", i);
   exit(1);
  }
 }

 fd = open(penv[0], O_RDWR|O_TMPFILE|O_EXCL, 0666);
 if (fd < 0) {
  perror("open");
  exit(2);
 }

 snprintf(spath, 1024, "/proc/self/fd/%d", fd);
 snprintf(dpath, 1024, "%s/%s", penv[0], penv[1]);
 if (linkat(AT_FDCWD, spath, AT_FDCWD, dpath, AT_SYMLINK_FOLLOW) == 0) {
  fprintf(stderr, "linkat returns successfully\n");
  close(fd);
  exit(3);
 }

 if (stat(dpath, &sbuf) == 0) {
  fprintf(stderr, "stat returns successfully\n");
  close(fd);
  exit(4);
 }
 close(fd);

 return (0);
}
