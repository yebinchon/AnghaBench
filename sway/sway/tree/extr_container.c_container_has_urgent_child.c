
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int dummy; } ;


 int container_find_child (struct sway_container*,int ,int *) ;
 int find_urgent_iterator ;

bool container_has_urgent_child(struct sway_container *container) {
 return container_find_child(container, find_urgent_iterator, ((void*)0));
}
