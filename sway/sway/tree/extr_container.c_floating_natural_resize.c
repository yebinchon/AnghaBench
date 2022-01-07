
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {void* natural_height; void* natural_width; } ;
struct sway_container {void* content_height; void* content_width; struct sway_view* view; void* height; void* width; } ;


 int container_set_geometry_from_content (struct sway_container*) ;
 int floating_calculate_constraints (int*,int*,int*,int*) ;
 void* fmax (int,int ) ;
 int fmin (void*,int) ;

__attribute__((used)) static void floating_natural_resize(struct sway_container *con) {
 int min_width, max_width, min_height, max_height;
 floating_calculate_constraints(&min_width, &max_width,
   &min_height, &max_height);
 if (!con->view) {
  con->width = fmax(min_width, fmin(con->width, max_width));
  con->height = fmax(min_height, fmin(con->height, max_height));
 } else {
  struct sway_view *view = con->view;
  con->content_width =
   fmax(min_width, fmin(view->natural_width, max_width));
  con->content_height =
   fmax(min_height, fmin(view->natural_height, max_height));
  container_set_geometry_from_content(con);
 }
}
