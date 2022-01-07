
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_item {int item; } ;
struct wait_channel {scalar_t__ locked; int lockers; } ;
struct cmdq_item {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 struct wait_item* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct wait_item*,int ) ;
 int cmd_wait_for_remove (struct wait_channel*) ;
 int cmdq_continue (int ) ;
 int cmdq_error (struct cmdq_item*,char*,char const*) ;
 int entry ;
 int free (struct wait_item*) ;

__attribute__((used)) static enum cmd_retval
cmd_wait_for_unlock(struct cmdq_item *item, const char *name,
    struct wait_channel *wc)
{
 struct wait_item *wi;

 if (wc == ((void*)0) || !wc->locked) {
  cmdq_error(item, "channel %s not locked", name);
  return (CMD_RETURN_ERROR);
 }

 if ((wi = TAILQ_FIRST(&wc->lockers)) != ((void*)0)) {
  cmdq_continue(wi->item);
  TAILQ_REMOVE(&wc->lockers, wi, entry);
  free(wi);
 } else {
  wc->locked = 0;
  cmd_wait_for_remove(wc);
 }

 return (CMD_RETURN_NORMAL);
}
