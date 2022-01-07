
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int number; scalar_t__ time; struct client* client; } ;
struct client {int flags; int stdout_data; } ;


 int CLIENT_CONTROL ;
 int evbuffer_add_printf (int ,char*,char const*,long,int ,int) ;
 int server_client_push_stdout (struct client*) ;

void
cmdq_guard(struct cmdq_item *item, const char *guard, int flags)
{
 struct client *c = item->client;

 if (c == ((void*)0) || !(c->flags & CLIENT_CONTROL))
  return;

 evbuffer_add_printf(c->stdout_data, "%%%s %ld %u %d\n", guard,
     (long)item->time, item->number, flags);
 server_client_push_stdout(c);
}
