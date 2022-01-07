
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ipc_client {int subscribed_events; } ;
typedef enum ipc_command_type { ____Placeholder_ipc_command_type } ipc_command_type ;
struct TYPE_2__ {int length; struct ipc_client** items; } ;


 int SWAY_INFO ;
 int event_mask (int) ;
 TYPE_1__* ipc_client_list ;
 int ipc_send_reply (struct ipc_client*,int,char const*,int ) ;
 scalar_t__ strlen (char const*) ;
 int sway_log_errno (int ,char*) ;

__attribute__((used)) static void ipc_send_event(const char *json_string, enum ipc_command_type event) {
 struct ipc_client *client;
 for (int i = 0; i < ipc_client_list->length; i++) {
  client = ipc_client_list->items[i];
  if ((client->subscribed_events & event_mask(event)) == 0) {
   continue;
  }
  if (!ipc_send_reply(client, event, json_string,
    (uint32_t)strlen(json_string))) {
   sway_log_errno(SWAY_INFO, "Unable to send reply to IPC client");



   i--;
  }
 }
}
