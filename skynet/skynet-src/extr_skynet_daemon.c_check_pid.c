
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ESRCH ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char*,int*) ;
 int getpid () ;
 scalar_t__ kill (int,int ) ;

__attribute__((used)) static int
check_pid(const char *pidfile) {
 int pid = 0;
 FILE *f = fopen(pidfile,"r");
 if (f == ((void*)0))
  return 0;
 int n = fscanf(f,"%d", &pid);
 fclose(f);

 if (n !=1 || pid == 0 || pid == getpid()) {
  return 0;
 }

 if (kill(pid, 0) && errno == ESRCH)
  return 0;

 return pid;
}
