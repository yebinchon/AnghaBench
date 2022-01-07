
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int dummy; } ;


 int find_by_mark_iterator ;
 struct sway_container* root_find_container (int ,char*) ;

struct sway_container *container_find_mark(char *mark) {
 return root_find_container(find_by_mark_iterator, mark);
}
