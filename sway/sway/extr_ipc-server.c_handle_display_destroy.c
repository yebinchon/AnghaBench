
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_8__ {int link; } ;
struct TYPE_7__ {int sun_path; } ;
struct TYPE_6__ {int length; int * items; } ;


 int close (int ) ;
 int free (TYPE_2__*) ;
 int ipc_client_disconnect (int ) ;
 TYPE_1__* ipc_client_list ;
 TYPE_3__ ipc_display_destroy ;
 scalar_t__ ipc_event_source ;
 TYPE_2__* ipc_sockaddr ;
 int ipc_socket ;
 int list_free (TYPE_1__*) ;
 int unlink (int ) ;
 int wl_event_source_remove (scalar_t__) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_display_destroy(struct wl_listener *listener, void *data) {
 if (ipc_event_source) {
  wl_event_source_remove(ipc_event_source);
 }
 close(ipc_socket);
 unlink(ipc_sockaddr->sun_path);

 while (ipc_client_list->length) {
  ipc_client_disconnect(ipc_client_list->items[ipc_client_list->length-1]);
 }
 list_free(ipc_client_list);

 free(ipc_sockaddr);

 wl_list_remove(&ipc_display_destroy.link);
}
