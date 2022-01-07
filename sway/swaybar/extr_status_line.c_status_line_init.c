
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_line {int buffer_size; scalar_t__ pid; int read_fd; int write_fd; void* write; void* read; int buffer; int cont_signal; int stop_signal; } ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int SIGCONT ;
 int SIGSTOP ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int SWAY_ERROR ;
 struct status_line* calloc (int,int) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int execvp (char* const,char* const*) ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 void* fdopen (int,char*) ;
 scalar_t__ fork () ;
 int malloc (int) ;
 scalar_t__ pipe (int*) ;
 int sway_log (int ,char*) ;

struct status_line *status_line_init(char *cmd) {
 struct status_line *status = calloc(1, sizeof(struct status_line));
 status->stop_signal = SIGSTOP;
 status->cont_signal = SIGCONT;

 status->buffer_size = 8192;
 status->buffer = malloc(status->buffer_size);

 int pipe_read_fd[2];
 int pipe_write_fd[2];
 if (pipe(pipe_read_fd) != 0 || pipe(pipe_write_fd) != 0) {
  sway_log(SWAY_ERROR, "Unable to create pipes for status_command fork");
  exit(1);
 }

 status->pid = fork();
 if (status->pid == 0) {
  dup2(pipe_read_fd[1], STDOUT_FILENO);
  close(pipe_read_fd[0]);
  close(pipe_read_fd[1]);

  dup2(pipe_write_fd[0], STDIN_FILENO);
  close(pipe_write_fd[0]);
  close(pipe_write_fd[1]);

  char *const _cmd[] = { "sh", "-c", cmd, ((void*)0), };
  execvp(_cmd[0], _cmd);
  exit(1);
 }

 close(pipe_read_fd[1]);
 status->read_fd = pipe_read_fd[0];
 fcntl(status->read_fd, F_SETFL, O_NONBLOCK);
 close(pipe_write_fd[0]);
 status->write_fd = pipe_write_fd[1];
 fcntl(status->write_fd, F_SETFL, O_NONBLOCK);

 status->read = fdopen(status->read_fd, "r");
 status->write = fdopen(status->write_fd, "w");
 return status;
}
