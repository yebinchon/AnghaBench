
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {TYPE_1__* floating; TYPE_2__* tiling; } ;
typedef struct sway_container sway_container ;
struct TYPE_4__ {int length; struct sway_container** items; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;


 int container_for_each_child (struct sway_container*,void (*) (struct sway_container*,void*),void*) ;

void workspace_for_each_container(struct sway_workspace *ws,
  void (*f)(struct sway_container *con, void *data), void *data) {

 for (int i = 0; i < ws->tiling->length; ++i) {
  struct sway_container *container = ws->tiling->items[i];
  f(container, data);
  container_for_each_child(container, f, data);
 }

 for (int i = 0; i < ws->floating->length; ++i) {
  struct sway_container *container = ws->floating->items[i];
  f(container, data);
  container_for_each_child(container, f, data);
 }
}
