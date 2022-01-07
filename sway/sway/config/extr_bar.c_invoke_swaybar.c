
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wayland_socket_str ;
struct TYPE_3__ {int notify; } ;
struct bar_config {char* swaybar_command; char* id; TYPE_1__ client_destroy; int * client; } ;
typedef int sigset_t ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {int wl_display; } ;


 int AF_UNIX ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIG_SETMASK ;
 int SOCK_STREAM ;
 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int _exit (int ) ;
 scalar_t__ close (int) ;
 int execvp (char* const,char* const*) ;
 scalar_t__ fork () ;
 int handle_swaybar_client_destroy ;
 TYPE_2__ server ;
 int setenv (char*,char*,int) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int sway_log (int ,char*,...) ;
 int sway_log_errno (int ,char*) ;
 int sway_set_cloexec (int,int) ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;
 int wl_client_add_destroy_listener (int *,TYPE_1__*) ;
 int * wl_client_create (int ,int) ;

__attribute__((used)) static void invoke_swaybar(struct bar_config *bar) {
 int sockets[2];
 if (socketpair(AF_UNIX, SOCK_STREAM, 0, sockets) != 0) {
  sway_log_errno(SWAY_ERROR, "socketpair failed");
  return;
 }
 if (!sway_set_cloexec(sockets[0], 1) || !sway_set_cloexec(sockets[1], 1)) {
  return;
 }

 bar->client = wl_client_create(server.wl_display, sockets[0]);
 if (bar->client == ((void*)0)) {
  sway_log_errno(SWAY_ERROR, "wl_client_create failed");
  return;
 }

 bar->client_destroy.notify = handle_swaybar_client_destroy;
 wl_client_add_destroy_listener(bar->client, &bar->client_destroy);

 pid_t pid = fork();
 if (pid < 0) {
  sway_log(SWAY_ERROR, "Failed to create fork for swaybar");
  return;
 } else if (pid == 0) {

  sigset_t set;
  sigemptyset(&set);
  sigprocmask(SIG_SETMASK, &set, ((void*)0));

  pid = fork();
  if (pid < 0) {
   sway_log_errno(SWAY_ERROR, "fork failed");
   _exit(EXIT_FAILURE);
  } else if (pid == 0) {
   if (!sway_set_cloexec(sockets[1], 0)) {
    _exit(EXIT_FAILURE);
   }

   char wayland_socket_str[16];
   snprintf(wayland_socket_str, sizeof(wayland_socket_str),
     "%d", sockets[1]);
   setenv("WAYLAND_SOCKET", wayland_socket_str, 1);


   char *const cmd[] = {
     bar->swaybar_command ? bar->swaybar_command : "swaybar",
     "-b", bar->id, ((void*)0)};
   execvp(cmd[0], cmd);
   _exit(EXIT_FAILURE);
  }
  _exit(EXIT_SUCCESS);
 }

 if (close(sockets[1]) != 0) {
  sway_log_errno(SWAY_ERROR, "close failed");
  return;
 }

 if (waitpid(pid, ((void*)0), 0) < 0) {
  sway_log_errno(SWAY_ERROR, "waitpid failed");
  return;
 }

 sway_log(SWAY_DEBUG, "Spawned swaybar %s", bar->id);
 return;
}
