
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* marks; } ;
struct TYPE_2__ {int length; char** items; } ;


 int container_update_marks_textures (struct sway_container*) ;
 int find_by_mark_iterator ;
 int free (char*) ;
 int ipc_event_window (struct sway_container*,char*) ;
 int list_del (TYPE_1__*,int) ;
 struct sway_container* root_find_container (int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;

bool container_find_and_unmark(char *mark) {
 struct sway_container *con = root_find_container(
  find_by_mark_iterator, mark);
 if (!con) {
  return 0;
 }

 for (int i = 0; i < con->marks->length; ++i) {
  char *con_mark = con->marks->items[i];
  if (strcmp(con_mark, mark) == 0) {
   free(con_mark);
   list_del(con->marks, i);
   container_update_marks_textures(con);
   ipc_event_window(con, "mark");
   return 1;
  }
 }
 return 0;
}
