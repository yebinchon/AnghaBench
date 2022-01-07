
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* marks; } ;
struct TYPE_2__ {int length; int * items; } ;


 int free (int ) ;
 int ipc_event_window (struct sway_container*,char*) ;

void container_clear_marks(struct sway_container *con) {
 for (int i = 0; i < con->marks->length; ++i) {
  free(con->marks->items[i]);
 }
 con->marks->length = 0;
 ipc_event_window(con, "mark");
}
