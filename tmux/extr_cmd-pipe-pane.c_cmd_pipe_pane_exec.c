
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct winlink {int dummy; } ;
struct window_pane {int pipe_fd; int fd; int * pipe_event; int pipe_off; TYPE_2__* event; } ;
struct session {int dummy; } ;
struct format_tree {int dummy; } ;
struct TYPE_3__ {struct winlink* wl; struct session* s; struct window_pane* wp; } ;
struct cmdq_item {int client; TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef int sigset_t ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {int input; } ;


 int AF_UNIX ;
 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int EVBUFFER_LENGTH (int ) ;
 int EV_READ ;
 int EV_WRITE ;
 int FORMAT_NONE ;
 int O_WRONLY ;
 int PF_UNSPEC ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int SOCK_STREAM ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_BSHELL ;
 int _PATH_DEVNULL ;
 int _exit (int) ;
 int args_has (struct args*,char) ;
 int bufferevent_enable (int *,int ) ;
 int bufferevent_free (int *) ;
 int * bufferevent_new (int,int ,int ,int ,struct window_pane*) ;
 int close (int) ;
 int closefrom (int ) ;
 struct client* cmd_find_client (struct cmdq_item*,int *,int) ;
 int cmd_pipe_pane_error_callback ;
 int cmd_pipe_pane_read_callback ;
 int cmd_pipe_pane_write_callback ;
 int cmdq_error (struct cmdq_item*,char*,int ) ;
 int dup2 (int,int) ;
 int errno ;
 int execl (int ,char*,char*,char*,char*) ;
 int fatalx (char*) ;
 int fork () ;
 struct format_tree* format_create (int ,struct cmdq_item*,int ,int ) ;
 int format_defaults (struct format_tree*,struct client*,struct session*,struct winlink*,struct window_pane*) ;
 char* format_expand_time (struct format_tree*,char*) ;
 int format_free (struct format_tree*) ;
 int free (char*) ;
 int open (int ,int ,int ) ;
 int proc_clear_signals (int ,int) ;
 int server_destroy_pane (struct window_pane*,int) ;
 int server_proc ;
 int setblocking (int,int ) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int strerror (int ) ;
 scalar_t__ window_pane_destroy_ready (struct window_pane*) ;

__attribute__((used)) static enum cmd_retval
cmd_pipe_pane_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct client *c = cmd_find_client(item, ((void*)0), 1);
 struct window_pane *wp = item->target.wp;
 struct session *s = item->target.s;
 struct winlink *wl = item->target.wl;
 char *cmd;
 int old_fd, pipe_fd[2], null_fd, in, out;
 struct format_tree *ft;
 sigset_t set, oldset;


 old_fd = wp->pipe_fd;
 if (wp->pipe_fd != -1) {
  bufferevent_free(wp->pipe_event);
  close(wp->pipe_fd);
  wp->pipe_fd = -1;

  if (window_pane_destroy_ready(wp)) {
   server_destroy_pane(wp, 1);
   return (CMD_RETURN_NORMAL);
  }
 }


 if (args->argc == 0 || *args->argv[0] == '\0')
  return (CMD_RETURN_NORMAL);







 if (args_has(self->args, 'o') && old_fd != -1)
  return (CMD_RETURN_NORMAL);


 if (args_has(self->args, 'I')) {
  in = 1;
  out = args_has(self->args, 'O');
 } else {
  in = 0;
  out = 1;
 }


 if (socketpair(AF_UNIX, SOCK_STREAM, PF_UNSPEC, pipe_fd) != 0) {
  cmdq_error(item, "socketpair error: %s", strerror(errno));
  return (CMD_RETURN_ERROR);
 }


 ft = format_create(item->client, item, FORMAT_NONE, 0);
 format_defaults(ft, c, s, wl, wp);
 cmd = format_expand_time(ft, args->argv[0]);
 format_free(ft);


 sigfillset(&set);
 sigprocmask(SIG_BLOCK, &set, &oldset);
 switch (fork()) {
 case -1:
  sigprocmask(SIG_SETMASK, &oldset, ((void*)0));
  cmdq_error(item, "fork error: %s", strerror(errno));

  free(cmd);
  return (CMD_RETURN_ERROR);
 case 0:

  proc_clear_signals(server_proc, 1);
  sigprocmask(SIG_SETMASK, &oldset, ((void*)0));
  close(pipe_fd[0]);

  null_fd = open(_PATH_DEVNULL, O_WRONLY, 0);
  if (out) {
   if (dup2(pipe_fd[1], STDIN_FILENO) == -1)
    _exit(1);
  } else {
   if (dup2(null_fd, STDIN_FILENO) == -1)
    _exit(1);
  }
  if (in) {
   if (dup2(pipe_fd[1], STDOUT_FILENO) == -1)
    _exit(1);
   if (pipe_fd[1] != STDOUT_FILENO)
    close(pipe_fd[1]);
  } else {
   if (dup2(null_fd, STDOUT_FILENO) == -1)
    _exit(1);
  }
  if (dup2(null_fd, STDERR_FILENO) == -1)
   _exit(1);
  closefrom(STDERR_FILENO + 1);

  execl(_PATH_BSHELL, "sh", "-c", cmd, (char *) ((void*)0));
  _exit(1);
 default:

  sigprocmask(SIG_SETMASK, &oldset, ((void*)0));
  close(pipe_fd[1]);

  wp->pipe_fd = pipe_fd[0];
  if (wp->fd != -1)
   wp->pipe_off = EVBUFFER_LENGTH(wp->event->input);
  else
   wp->pipe_off = 0;

  setblocking(wp->pipe_fd, 0);
  wp->pipe_event = bufferevent_new(wp->pipe_fd,
      cmd_pipe_pane_read_callback,
      cmd_pipe_pane_write_callback,
      cmd_pipe_pane_error_callback,
      wp);
  if (wp->pipe_event == ((void*)0))
   fatalx("out of memory");
  if (out)
   bufferevent_enable(wp->pipe_event, EV_WRITE);
  if (in)
   bufferevent_enable(wp->pipe_event, EV_READ);

  free(cmd);
  return (CMD_RETURN_NORMAL);
 }
}
