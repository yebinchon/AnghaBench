
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOCK_EX ;
 int LOCK_NB ;
 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fflush (int *) ;
 int flock (int,int) ;
 int fprintf (int ,char*,...) ;
 int fscanf (int *,char*,int*) ;
 int getpid () ;
 int open (char const*,int,int) ;
 int stderr ;

__attribute__((used)) static int
write_pid(const char *pidfile) {
 FILE *f;
 int pid = 0;
 int fd = open(pidfile, O_RDWR|O_CREAT, 0644);
 if (fd == -1) {
  fprintf(stderr, "Can't create pidfile [%s].\n", pidfile);
  return 0;
 }
 f = fdopen(fd, "w+");
 if (f == ((void*)0)) {
  fprintf(stderr, "Can't open pidfile [%s].\n", pidfile);
  return 0;
 }

 if (flock(fd, LOCK_EX|LOCK_NB) == -1) {
  int n = fscanf(f, "%d", &pid);
  fclose(f);
  if (n != 1) {
   fprintf(stderr, "Can't lock and read pidfile.\n");
  } else {
   fprintf(stderr, "Can't lock pidfile, lock is held by pid %d.\n", pid);
  }
  return 0;
 }

 pid = getpid();
 if (!fprintf(f,"%d\n", pid)) {
  fprintf(stderr, "Can't write pid.\n");
  close(fd);
  return 0;
 }
 fflush(f);

 return pid;
}
