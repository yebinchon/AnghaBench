
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str_handle_lines_t ;
typedef scalar_t__ pid_t ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int True ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int) ;
 int execvp (char* const,char* const*) ;
 scalar_t__ fork () ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 int read (int,char*,int) ;
 int str_handle_lines (int *,char*,char**,int ,void*) ;
 int xfree (char*) ;

BOOL
subprocess(RDPCLIENT * This, char *const argv[], str_handle_lines_t linehandler, void *data)
{
 pid_t child;
 int fd[2];
 int n = 1;
 char output[256];
 char *rest = ((void*)0);

 if (pipe(fd) < 0)
 {
  perror("pipe");
  return False;
 }

 if ((child = fork()) < 0)
 {
  perror("fork");
  return False;
 }


 if (child == 0)
 {

  close(fd[0]);


  dup2(fd[1], 1);
  dup2(fd[1], 2);


  execvp(argv[0], argv);
  perror("Error executing child");
  _exit(128);
 }


 close(fd[1]);
 while (n > 0)
 {
  n = read(fd[0], output, 255);
  output[n] = '\0';
  str_handle_lines(This, output, &rest, linehandler, data);
 }
 xfree(rest);

 return True;
}
