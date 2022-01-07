
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_item {struct cmdq_item* item; } ;
struct wait_channel {int waiters; int name; scalar_t__ woken; } ;
struct cmdq_item {struct client* client; } ;
struct client {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int CMD_RETURN_WAIT ;
 int TAILQ_INSERT_TAIL (int *,struct wait_item*,int ) ;
 struct wait_channel* cmd_wait_for_add (char const*) ;
 int cmd_wait_for_remove (struct wait_channel*) ;
 int cmdq_error (struct cmdq_item*,char*) ;
 int entry ;
 int log_debug (char*,int ,struct client*) ;
 struct wait_item* xcalloc (int,int) ;

__attribute__((used)) static enum cmd_retval
cmd_wait_for_wait(struct cmdq_item *item, const char *name,
    struct wait_channel *wc)
{
 struct client *c = item->client;
 struct wait_item *wi;

 if (c == ((void*)0)) {
  cmdq_error(item, "not able to wait");
  return (CMD_RETURN_ERROR);
 }

 if (wc == ((void*)0))
  wc = cmd_wait_for_add(name);

 if (wc->woken) {
  log_debug("wait channel %s already woken (%p)", wc->name, c);
  cmd_wait_for_remove(wc);
  return (CMD_RETURN_NORMAL);
 }
 log_debug("wait channel %s not woken (%p)", wc->name, c);

 wi = xcalloc(1, sizeof *wi);
 wi->item = item;
 TAILQ_INSERT_TAIL(&wc->waiters, wi, entry);

 return (CMD_RETURN_WAIT);
}
