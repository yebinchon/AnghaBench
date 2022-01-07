
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_output {int dummy; } ;
struct sway_container {int view; } ;


 int damage_surface_iterator ;
 int output_view_for_each_surface (struct sway_output*,int ,int ,int*) ;
 int view_is_visible (int ) ;

__attribute__((used)) static void damage_child_views_iterator(struct sway_container *con,
  void *data) {
 if (!con->view || !view_is_visible(con->view)) {
  return;
 }
 struct sway_output *output = data;
 bool whole = 1;
 output_view_for_each_surface(output, con->view, damage_surface_iterator,
   &whole);
}
