
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_item {struct cmdq_item* item; } ;
struct wait_channel {int locked; int lockers; } ;
struct cmdq_item {int * client; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int CMD_RETURN_WAIT ;
 int TAILQ_INSERT_TAIL (int *,struct wait_item*,int ) ;
 struct wait_channel* cmd_wait_for_add (char const*) ;
 int cmdq_error (struct cmdq_item*,char*) ;
 int entry ;
 struct wait_item* xcalloc (int,int) ;

__attribute__((used)) static enum cmd_retval
cmd_wait_for_lock(struct cmdq_item *item, const char *name,
    struct wait_channel *wc)
{
 struct wait_item *wi;

 if (item->client == ((void*)0)) {
  cmdq_error(item, "not able to lock");
  return (CMD_RETURN_ERROR);
 }

 if (wc == ((void*)0))
  wc = cmd_wait_for_add(name);

 if (wc->locked) {
  wi = xcalloc(1, sizeof *wi);
  wi->item = item;
  TAILQ_INSERT_TAIL(&wc->lockers, wi, entry);
  return (CMD_RETURN_WAIT);
 }
 wc->locked = 1;

 return (CMD_RETURN_NORMAL);
}
