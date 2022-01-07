
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {TYPE_2__* view; } ;
struct TYPE_4__ {TYPE_1__* impl; } ;
struct TYPE_3__ {int (* set_fullscreen ) (TYPE_2__*,int) ;} ;


 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void set_fullscreen_iterator(struct sway_container *con, void *data) {
 if (!con->view) {
  return;
 }
 if (con->view->impl->set_fullscreen) {
  bool *enable = data;
  con->view->impl->set_fullscreen(con->view, *enable);
 }
}
