
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_server {int wl_event_loop; int wl_display; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {scalar_t__* sun_path; } ;
struct TYPE_5__ {int notify; } ;


 int AF_UNIX ;
 int FD_CLOEXEC ;
 int F_OK ;
 int F_SETFD ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int WL_EVENT_READABLE ;
 int access (int *,int ) ;
 int bind (int,struct sockaddr*,int) ;
 int create_list () ;
 int fcntl (int,int ,int ) ;
 int * getenv (char*) ;
 int handle_display_destroy ;
 int ipc_client_list ;
 TYPE_1__ ipc_display_destroy ;
 int ipc_event_source ;
 int ipc_handle_connection ;
 TYPE_2__* ipc_sockaddr ;
 int ipc_socket ;
 TYPE_2__* ipc_user_sockaddr () ;
 int listen (int,int) ;
 int setenv (char*,scalar_t__*,int) ;
 int socket (int ,int ,int ) ;
 int strncpy (scalar_t__*,int *,int) ;
 int sway_abort (char*) ;
 int unlink (scalar_t__*) ;
 int wl_display_add_destroy_listener (int ,TYPE_1__*) ;
 int wl_event_loop_add_fd (int ,int,int ,int ,struct sway_server*) ;

void ipc_init(struct sway_server *server) {
 ipc_socket = socket(AF_UNIX, SOCK_STREAM, 0);
 if (ipc_socket == -1) {
  sway_abort("Unable to create IPC socket");
 }
 if (fcntl(ipc_socket, F_SETFD, FD_CLOEXEC) == -1) {
  sway_abort("Unable to set CLOEXEC on IPC socket");
 }
 if (fcntl(ipc_socket, F_SETFL, O_NONBLOCK) == -1) {
  sway_abort("Unable to set NONBLOCK on IPC socket");
 }

 ipc_sockaddr = ipc_user_sockaddr();


 if (getenv("SWAYSOCK") != ((void*)0) && access(getenv("SWAYSOCK"), F_OK) == -1) {
  strncpy(ipc_sockaddr->sun_path, getenv("SWAYSOCK"), sizeof(ipc_sockaddr->sun_path) - 1);
  ipc_sockaddr->sun_path[sizeof(ipc_sockaddr->sun_path) - 1] = 0;
 }

 unlink(ipc_sockaddr->sun_path);
 if (bind(ipc_socket, (struct sockaddr *)ipc_sockaddr, sizeof(*ipc_sockaddr)) == -1) {
  sway_abort("Unable to bind IPC socket");
 }

 if (listen(ipc_socket, 3) == -1) {
  sway_abort("Unable to listen on IPC socket");
 }


 setenv("I3SOCK", ipc_sockaddr->sun_path, 1);
 setenv("SWAYSOCK", ipc_sockaddr->sun_path, 1);

 ipc_client_list = create_list();

 ipc_display_destroy.notify = handle_display_destroy;
 wl_display_add_destroy_listener(server->wl_display, &ipc_display_destroy);

 ipc_event_source = wl_event_loop_add_fd(server->wl_event_loop, ipc_socket,
   WL_EVENT_READABLE, ipc_handle_connection, server);
}
