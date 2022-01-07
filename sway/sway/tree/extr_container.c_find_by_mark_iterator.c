
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int dummy; } ;


 int container_has_mark (struct sway_container*,char*) ;

__attribute__((used)) static bool find_by_mark_iterator(struct sway_container *con, void *data) {
 char *mark = data;
 return container_has_mark(con, mark);
}
