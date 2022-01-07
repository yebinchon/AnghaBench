
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int node; } ;


 int collect_focus_iter (int *,void*) ;

__attribute__((used)) static void collect_focus_container_iter(struct sway_container *container,
  void *data) {
 collect_focus_iter(&container->node, data);
}
