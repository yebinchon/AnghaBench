
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ipc_client {int fd; struct ipc_client* write_buffer; scalar_t__ writable_event_source; scalar_t__ event_source; } ;
struct TYPE_3__ {int length; struct ipc_client** items; } ;


 int SHUT_RDWR ;
 int SWAY_INFO ;
 int close (int ) ;
 int free (struct ipc_client*) ;
 TYPE_1__* ipc_client_list ;
 int list_del (TYPE_1__*,int) ;
 int shutdown (int ,int ) ;
 int sway_assert (int ,char*) ;
 int sway_log (int ,char*,int ) ;
 int wl_event_source_remove (scalar_t__) ;

void ipc_client_disconnect(struct ipc_client *client) {
 if (!sway_assert(client != ((void*)0), "client != NULL")) {
  return;
 }

 shutdown(client->fd, SHUT_RDWR);

 sway_log(SWAY_INFO, "IPC Client %d disconnected", client->fd);
 wl_event_source_remove(client->event_source);
 if (client->writable_event_source) {
  wl_event_source_remove(client->writable_event_source);
 }
 int i = 0;
 while (i < ipc_client_list->length && ipc_client_list->items[i] != client) {
  i++;
 }
 list_del(ipc_client_list, i);
 free(client->write_buffer);
 close(client->fd);
 free(client);
}
