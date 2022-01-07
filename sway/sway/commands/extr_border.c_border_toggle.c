
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {int border; TYPE_1__* view; } ;
struct TYPE_2__ {int xdg_decoration; scalar_t__ using_csd; } ;






 int set_border (struct sway_container*,int const) ;
 int sway_assert (int,char*) ;

__attribute__((used)) static void border_toggle(struct sway_container *con) {
 if (con->view && con->view->using_csd) {
  set_border(con, 130);
  return;
 }
 switch (con->border) {
 case 130:
  set_border(con, 128);
  break;
 case 128:
  set_border(con, 129);
  break;
 case 129:
  if (con->view && con->view->xdg_decoration) {
   set_border(con, 131);
  } else {
   set_border(con, 130);
  }
  break;
 case 131:

  sway_assert(0, "Unreachable");
  break;
 }
}
