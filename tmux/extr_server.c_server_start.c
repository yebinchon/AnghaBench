
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxproc {int dummy; } ;
struct event_base {int dummy; } ;
struct client {int flags; } ;
typedef int sigset_t ;


 int AF_UNIX ;
 int CLIENT_EXIT ;
 int PF_UNSPEC ;
 int RB_INIT (int *) ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int SOCK_STREAM ;
 int TAILQ_INIT (int *) ;
 int all_window_panes ;
 int clients ;
 int close (int) ;
 int cmdq_append (struct client*,int ) ;
 int cmdq_get_error (char*) ;
 scalar_t__ daemon (int,int ) ;
 scalar_t__ event_reinit (struct event_base*) ;
 int exit (int ) ;
 int fatal (char*) ;
 int fatalx (char*) ;
 int fork () ;
 int free (char*) ;
 int gettimeofday (int *,int *) ;
 int job_kill_all () ;
 int key_bindings_init () ;
 int log_get_level () ;
 scalar_t__ pledge (char*,int *) ;
 int proc_clear_signals (struct tmuxproc*,int ) ;
 int proc_loop (int ,int ) ;
 int proc_set_signals (int ,int ) ;
 int proc_start (char*) ;
 int server_add_accept (int ) ;
 struct client* server_client_create (int) ;
 int server_create_socket (char**) ;
 int server_fd ;
 int server_loop ;
 int server_proc ;
 int server_signal ;
 int server_update_socket () ;
 int sessions ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int start_time ;
 int status_prompt_save_history () ;
 int tty_create_log () ;
 int unlink (char*) ;
 int windows ;

int
server_start(struct tmuxproc *client, struct event_base *base, int lockfd,
    char *lockfile)
{
 int pair[2];
 sigset_t set, oldset;
 struct client *c;
 char *cause = ((void*)0);

 if (socketpair(AF_UNIX, SOCK_STREAM, PF_UNSPEC, pair) != 0)
  fatal("socketpair failed");

 sigfillset(&set);
 sigprocmask(SIG_BLOCK, &set, &oldset);
 switch (fork()) {
 case -1:
  fatal("fork failed");
 case 0:
  break;
 default:
  sigprocmask(SIG_SETMASK, &oldset, ((void*)0));
  close(pair[1]);
  return (pair[0]);
 }
 close(pair[0]);
 if (daemon(1, 0) != 0)
  fatal("daemon failed");
 proc_clear_signals(client, 0);
 if (event_reinit(base) != 0)
  fatalx("event_reinit failed");
 server_proc = proc_start("server");
 proc_set_signals(server_proc, server_signal);
 sigprocmask(SIG_SETMASK, &oldset, ((void*)0));

 if (log_get_level() > 1)
  tty_create_log();
 if (pledge("stdio rpath wpath cpath fattr unix getpw recvfd proc exec "
     "tty ps", ((void*)0)) != 0)
  fatal("pledge failed");

 RB_INIT(&windows);
 RB_INIT(&all_window_panes);
 TAILQ_INIT(&clients);
 RB_INIT(&sessions);
 key_bindings_init();

 gettimeofday(&start_time, ((void*)0));

 server_fd = server_create_socket(&cause);
 if (server_fd != -1)
  server_update_socket();
 c = server_client_create(pair[1]);

 if (lockfd >= 0) {
  unlink(lockfile);
  free(lockfile);
  close(lockfd);
 }

 if (cause != ((void*)0)) {
  cmdq_append(c, cmdq_get_error(cause));
  free(cause);
  c->flags |= CLIENT_EXIT;
 }

 server_add_accept(0);
 proc_loop(server_proc, server_loop);

 job_kill_all();
 status_prompt_save_history();

 exit(0);
}
