
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int penv ;


 int AT_FDCWD ;
 int AT_SYMLINK_FOLLOW ;
 int O_RDWR ;
 int O_TMPFILE ;
 int WEXITSTATUS (int) ;
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
 int system (char*) ;
 int unlink (char*) ;

int
main(int argc, char *argv[])
{
 int i, fd, ret;
 char spath[1024], dpath[1024];
 char *penv[] = {"TESTDIR", "TESTFILE0"};
 struct stat sbuf;

 (void) fprintf(stdout, "Verify O_TMPFILE file can be linked.\n");




 for (i = 0; i < sizeof (penv) / sizeof (char *); i++) {
  if ((penv[i] = getenv(penv[i])) == ((void*)0)) {
   (void) fprintf(stderr, "getenv(penv[%d])\n", i);
   exit(1);
  }
 }

 fd = open(penv[0], O_RDWR|O_TMPFILE, 0666);
 if (fd < 0) {
  perror("open");
  exit(2);
 }

 snprintf(spath, 1024, "/proc/self/fd/%d", fd);
 snprintf(dpath, 1024, "%s/%s", penv[0], penv[1]);
 if (linkat(AT_FDCWD, spath, AT_FDCWD, dpath, AT_SYMLINK_FOLLOW) < 0) {
  perror("linkat");
  close(fd);
  exit(3);
 }

 if ((ret = system("sudo zpool freeze $TESTPOOL"))) {
  if (ret == -1)
   perror("system \"zpool freeze\"");
  else
   fprintf(stderr, "zpool freeze exits with %d\n",
       WEXITSTATUS(ret));
  exit(4);
 }

 close(fd);

 if ((ret = system("sudo zpool export $TESTPOOL"))) {
  if (ret == -1)
   perror("system \"zpool export\"");
  else
   fprintf(stderr, "zpool export exits with %d\n",
       WEXITSTATUS(ret));
  exit(4);
 }

 if ((ret = system("sudo zpool import $TESTPOOL"))) {
  if (ret == -1)
   perror("system \"zpool import\"");
  else
   fprintf(stderr, "zpool import exits with %d\n",
       WEXITSTATUS(ret));
  exit(4);
 }

 if (stat(dpath, &sbuf) < 0) {
  perror("stat");
  unlink(dpath);
  exit(5);
 }
 unlink(dpath);

 return (0);
}
