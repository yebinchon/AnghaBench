
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int penv ;
typedef int mode_t ;
typedef int fpath ;
typedef int buf ;


 int O_RDWR ;
 int S_ISGID ;
 int S_ISUID ;
 int close (int) ;
 int creat (char*,int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* getenv (char*) ;
 int mkdir (char*,int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int setuid (int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int umask (int ) ;
 int unlink (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
test_stat_mode(mode_t extra)
{
 struct stat st;
 int i, fd;
 char fpath[1024];
 char *penv[] = {"TESTDIR", "TESTFILE0"};
 char buf[] = "test";
 mode_t res;
 mode_t mode = 0777 | extra;




 for (i = 0; i < sizeof (penv) / sizeof (char *); i++) {
  if ((penv[i] = getenv(penv[i])) == ((void*)0)) {
   fprintf(stderr, "getenv(penv[%d])\n", i);
   exit(1);
  }
 }

 umask(0);
 if (stat(penv[0], &st) == -1 && mkdir(penv[0], mode) == -1) {
  perror("mkdir");
  exit(2);
 }

 snprintf(fpath, sizeof (fpath), "%s/%s", penv[0], penv[1]);
 unlink(fpath);
 if (stat(fpath, &st) == 0) {
  fprintf(stderr, "%s exists\n", fpath);
  exit(3);
 }

 fd = creat(fpath, mode);
 if (fd == -1) {
  perror("creat");
  exit(4);
 }
 close(fd);

 if (setuid(65534) == -1) {
  perror("setuid");
  exit(5);
 }

 fd = open(fpath, O_RDWR);
 if (fd == -1) {
  perror("open");
  exit(6);
 }

 if (write(fd, buf, sizeof (buf)) == -1) {
  perror("write");
  exit(7);
 }
 close(fd);

 if (stat(fpath, &st) == -1) {
  perror("stat");
  exit(8);
 }
 unlink(fpath);


 res = st.st_mode & (0777 | S_ISUID | S_ISGID);
 if (res != (mode & 0777)) {
  fprintf(stderr, "stat(2) %o\n", res);
  exit(9);
 }
}
