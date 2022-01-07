
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;
struct key_event {int key; } ;
struct cmdq_item {int dummy; } ;
struct client {int flags; int (* overlay_key ) (struct client*,struct key_event*) ;int * prompt_string; struct session* session; } ;


 int CLIENT_DEAD ;
 int CLIENT_READONLY ;
 int CLIENT_SUSPENDED ;
 int cmdq_append (struct client*,struct cmdq_item*) ;
 struct cmdq_item* cmdq_get_callback (int ,struct key_event*) ;
 int server_client_clear_overlay (struct client*) ;
 int server_client_key_callback ;
 int status_message_clear (struct client*) ;
 scalar_t__ status_prompt_key (struct client*,int ) ;
 int stub1 (struct client*,struct key_event*) ;

int
server_client_handle_key(struct client *c, struct key_event *event)
{
 struct session *s = c->session;
 struct cmdq_item *item;


 if (s == ((void*)0) || (c->flags & (CLIENT_DEAD|CLIENT_SUSPENDED)) != 0)
  return (0);






 if (~c->flags & CLIENT_READONLY) {
  status_message_clear(c);
  if (c->prompt_string != ((void*)0)) {
   if (status_prompt_key(c, event->key) == 0)
    return (0);
  }
  if (c->overlay_key != ((void*)0)) {
   switch (c->overlay_key(c, event)) {
   case 0:
    return (0);
   case 1:
    server_client_clear_overlay(c);
    return (0);
   }
  }
  server_client_clear_overlay(c);
 }





 item = cmdq_get_callback(server_client_key_callback, event);
 cmdq_append(c, item);
 return (1);
}
