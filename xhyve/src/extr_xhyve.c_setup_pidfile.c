
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int atexit (int (*) ()) ;
 int close (int) ;
 int fprintf (int ,char*) ;
 int getpid () ;
 int open (int *,int,int) ;
 int * pidfile ;
 int remove_pidfile () ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int strlen (char*) ;
 scalar_t__ write (int,void*,int ) ;

__attribute__((used)) static int
setup_pidfile()
{
 int f, error, pid;
 char pid_str[21];

 if (pidfile == ((void*)0))
  return 0;

 pid = getpid();

 error = sprintf(pid_str, "%d", pid);
 if (error < 0)
  goto fail;

 f = open(pidfile, O_CREAT|O_EXCL|O_WRONLY, 0644);
 if (f < 0)
  goto fail;

 error = atexit(remove_pidfile);
 if (error < 0) {
  close(f);
  remove_pidfile();
  goto fail;
 }

 if (0 > (write(f, (void*)pid_str, strlen(pid_str)))) {
  close(f);
  goto fail;
 }

 error = close(f);
 if (error < 0)
  goto fail;

 return 0;

fail:
 fprintf(stderr, "Failed to set up pidfile\n");
 return -1;
}
