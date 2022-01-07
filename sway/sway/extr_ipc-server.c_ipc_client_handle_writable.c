
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipc_client {scalar_t__ write_buffer_len; int * writable_event_source; scalar_t__ write_buffer; int fd; } ;
typedef int ssize_t ;


 scalar_t__ EAGAIN ;
 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int SWAY_INFO ;
 int WL_EVENT_ERROR ;
 int WL_EVENT_HANGUP ;
 scalar_t__ errno ;
 int ipc_client_disconnect (struct ipc_client*) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int sway_log (int ,char*,...) ;
 int sway_log_errno (int ,char*) ;
 int wl_event_source_remove (int *) ;
 int write (int ,scalar_t__,scalar_t__) ;

int ipc_client_handle_writable(int client_fd, uint32_t mask, void *data) {
 struct ipc_client *client = data;

 if (mask & WL_EVENT_ERROR) {
  sway_log(SWAY_ERROR, "IPC Client socket error, removing client");
  ipc_client_disconnect(client);
  return 0;
 }

 if (mask & WL_EVENT_HANGUP) {
  sway_log(SWAY_DEBUG, "Client %d hung up", client->fd);
  ipc_client_disconnect(client);
  return 0;
 }

 if (client->write_buffer_len <= 0) {
  return 0;
 }

 sway_log(SWAY_DEBUG, "Client %d writable", client->fd);

 ssize_t written = write(client->fd, client->write_buffer, client->write_buffer_len);

 if (written == -1 && errno == EAGAIN) {
  return 0;
 } else if (written == -1) {
  sway_log_errno(SWAY_INFO, "Unable to send data from queue to IPC client");
  ipc_client_disconnect(client);
  return 0;
 }

 memmove(client->write_buffer, client->write_buffer + written, client->write_buffer_len - written);
 client->write_buffer_len -= written;

 if (client->write_buffer_len == 0 && client->writable_event_source) {
  wl_event_source_remove(client->writable_event_source);
  client->writable_event_source = ((void*)0);
 }

 return 0;
}
