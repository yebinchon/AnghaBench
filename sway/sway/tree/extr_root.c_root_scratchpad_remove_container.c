
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {int scratchpad; } ;
struct TYPE_2__ {int scratchpad; } ;


 int ipc_event_window (struct sway_container*,char*) ;
 int list_del (int ,int) ;
 int list_find (int ,struct sway_container*) ;
 TYPE_1__* root ;
 int sway_assert (int,char*) ;

void root_scratchpad_remove_container(struct sway_container *con) {
 if (!sway_assert(con->scratchpad, "Container is not in scratchpad")) {
  return;
 }
 con->scratchpad = 0;
 int index = list_find(root->scratchpad, con);
 if (index != -1) {
  list_del(root->scratchpad, index);
  ipc_event_window(con, "move");
 }
}
