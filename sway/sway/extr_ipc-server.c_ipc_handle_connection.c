
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sway_server {int wl_event_loop; } ;
struct ipc_client {int fd; int write_buffer_size; void* write_buffer; scalar_t__ write_buffer_len; int * writable_event_source; int event_source; scalar_t__ subscribed_events; scalar_t__ pending_length; struct sway_server* server; } ;


 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 scalar_t__ WL_EVENT_READABLE ;
 int accept (int ,int *,int *) ;
 int assert (int) ;
 int close (int) ;
 int fcntl (int,int ,...) ;
 int ipc_client_handle_readable ;
 int ipc_client_list ;
 int ipc_socket ;
 int list_add (int ,struct ipc_client*) ;
 void* malloc (int) ;
 int sway_log (int ,char*,...) ;
 int sway_log_errno (int ,char*) ;
 int wl_event_loop_add_fd (int ,int,scalar_t__,int ,struct ipc_client*) ;

int ipc_handle_connection(int fd, uint32_t mask, void *data) {
 (void) fd;
 struct sway_server *server = data;
 sway_log(SWAY_DEBUG, "Event on IPC listening socket");
 assert(mask == WL_EVENT_READABLE);

 int client_fd = accept(ipc_socket, ((void*)0), ((void*)0));
 if (client_fd == -1) {
  sway_log_errno(SWAY_ERROR, "Unable to accept IPC client connection");
  return 0;
 }

 int flags;
 if ((flags = fcntl(client_fd, F_GETFD)) == -1
   || fcntl(client_fd, F_SETFD, flags|FD_CLOEXEC) == -1) {
  sway_log_errno(SWAY_ERROR, "Unable to set CLOEXEC on IPC client socket");
  close(client_fd);
  return 0;
 }
 if ((flags = fcntl(client_fd, F_GETFL)) == -1
   || fcntl(client_fd, F_SETFL, flags|O_NONBLOCK) == -1) {
  sway_log_errno(SWAY_ERROR, "Unable to set NONBLOCK on IPC client socket");
  close(client_fd);
  return 0;
 }

 struct ipc_client *client = malloc(sizeof(struct ipc_client));
 if (!client) {
  sway_log(SWAY_ERROR, "Unable to allocate ipc client");
  close(client_fd);
  return 0;
 }
 client->server = server;
 client->pending_length = 0;
 client->fd = client_fd;
 client->subscribed_events = 0;
 client->event_source = wl_event_loop_add_fd(server->wl_event_loop,
   client_fd, WL_EVENT_READABLE, ipc_client_handle_readable, client);
 client->writable_event_source = ((void*)0);

 client->write_buffer_size = 128;
 client->write_buffer_len = 0;
 client->write_buffer = malloc(client->write_buffer_size);
 if (!client->write_buffer) {
  sway_log(SWAY_ERROR, "Unable to allocate ipc client write buffer");
  close(client_fd);
  return 0;
 }

 sway_log(SWAY_DEBUG, "New client: fd %d", client_fd);
 list_add(ipc_client_list, client);
 return 0;
}
