
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ view; } ;


 int view_set_activated (scalar_t__,int) ;

__attribute__((used)) static void send_unfocus(struct sway_container *con, void *data) {
 if (con->view) {
  view_set_activated(con->view, 0);
 }
}
