
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ view; } ;


 int view_close (scalar_t__) ;

__attribute__((used)) static void close_container_iterator(struct sway_container *con, void *data) {
 if (con->view) {
  view_close(con->view);
 }
}
