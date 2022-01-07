
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipc_client {int subscribed_events; } ;
typedef enum ipc_command_type { ____Placeholder_ipc_command_type } ipc_command_type ;
struct TYPE_2__ {int length; struct ipc_client** items; } ;


 int event_mask (int) ;
 TYPE_1__* ipc_client_list ;

__attribute__((used)) static bool ipc_has_event_listeners(enum ipc_command_type event) {
 for (int i = 0; i < ipc_client_list->length; i++) {
  struct ipc_client *client = ipc_client_list->items[i];
  if ((client->subscribed_events & event_mask(event)) != 0) {
   return 1;
  }
 }
 return 0;
}
