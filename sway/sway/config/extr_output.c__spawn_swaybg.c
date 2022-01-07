
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wayland_socket_str ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {int notify; } ;
struct TYPE_6__ {TYPE_1__ swaybg_client_destroy; int * swaybg_client; } ;
struct TYPE_5__ {int wl_display; } ;


 int AF_UNIX ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SOCK_STREAM ;
 int SWAY_ERROR ;
 int _exit (int ) ;
 scalar_t__ close (int) ;
 TYPE_3__* config ;
 int execvp (char*,char**) ;
 scalar_t__ fork () ;
 int handle_swaybg_client_destroy ;
 TYPE_2__ server ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int sway_log_errno (int ,char*) ;
 int sway_set_cloexec (int,int) ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;
 int wl_client_add_destroy_listener (int *,TYPE_1__*) ;
 int * wl_client_create (int ,int) ;
 int wl_client_destroy (int *) ;

__attribute__((used)) static bool _spawn_swaybg(char **command) {
 if (config->swaybg_client != ((void*)0)) {
  wl_client_destroy(config->swaybg_client);
 }
 int sockets[2];
 if (socketpair(AF_UNIX, SOCK_STREAM, 0, sockets) != 0) {
  sway_log_errno(SWAY_ERROR, "socketpair failed");
  return 0;
 }
 if (!sway_set_cloexec(sockets[0], 1) || !sway_set_cloexec(sockets[1], 1)) {
  return 0;
 }

 config->swaybg_client = wl_client_create(server.wl_display, sockets[0]);
 if (config->swaybg_client == ((void*)0)) {
  sway_log_errno(SWAY_ERROR, "wl_client_create failed");
  return 0;
 }

 config->swaybg_client_destroy.notify = handle_swaybg_client_destroy;
 wl_client_add_destroy_listener(config->swaybg_client,
  &config->swaybg_client_destroy);

 pid_t pid = fork();
 if (pid < 0) {
  sway_log_errno(SWAY_ERROR, "fork failed");
  return 0;
 } else if (pid == 0) {
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

   execvp(command[0], command);
   sway_log_errno(SWAY_ERROR, "execvp failed");
   _exit(EXIT_FAILURE);
  }
  _exit(EXIT_SUCCESS);
 }

 if (close(sockets[1]) != 0) {
  sway_log_errno(SWAY_ERROR, "close failed");
  return 0;
 }
 if (waitpid(pid, ((void*)0), 0) < 0) {
  sway_log_errno(SWAY_ERROR, "waitpid failed");
  return 0;
 }

 return 1;
}
