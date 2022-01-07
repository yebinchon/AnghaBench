
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ view; } ;


 int container_is_floating_or_child (struct sway_container*) ;

__attribute__((used)) static void count_tiling_views(struct sway_container *con, void *data) {
 if (con->view && !container_is_floating_or_child(con)) {
  size_t *count = data;
  *count += 1;
 }
}
