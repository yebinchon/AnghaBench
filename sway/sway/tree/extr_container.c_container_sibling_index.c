
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int dummy; } ;


 int container_get_siblings (struct sway_container*) ;
 int list_find (int ,struct sway_container*) ;

int container_sibling_index(struct sway_container *child) {
 return list_find(container_get_siblings(child), child);
}
