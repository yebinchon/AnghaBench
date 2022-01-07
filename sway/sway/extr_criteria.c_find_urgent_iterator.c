
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int view; } ;
typedef int list_t ;


 int list_add (int *,int ) ;
 int view_is_urgent (int ) ;

__attribute__((used)) static void find_urgent_iterator(struct sway_container *con, void *data) {
 if (!con->view || !view_is_urgent(con->view)) {
  return;
 }
 list_t *urgent_views = data;
 list_add(urgent_views, con->view);
}
