
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {double width; double height; } ;
struct sway_container {double width; double height; double content_width; double content_height; int view; int workspace; } ;


 struct wlr_box* calloc (int,int) ;
 int container_set_geometry_from_content (struct sway_container*) ;
 int floating_calculate_constraints (int*,int*,int*,int*) ;
 double fmax (int,int ) ;
 int fmin (double,int) ;
 int free (struct wlr_box*) ;
 int sway_assert (int ,char*) ;
 int workspace_get_box (int ,struct wlr_box*) ;

void container_floating_set_default_size(struct sway_container *con) {
 if (!sway_assert(con->workspace, "Expected a container on a workspace")) {
  return;
 }

 int min_width, max_width, min_height, max_height;
 floating_calculate_constraints(&min_width, &max_width,
   &min_height, &max_height);
 struct wlr_box *box = calloc(1, sizeof(struct wlr_box));
 workspace_get_box(con->workspace, box);

 double width = fmax(min_width, fmin(box->width * 0.5, max_width));
 double height = fmax(min_height, fmin(box->height * 0.75, max_height));
 if (!con->view) {
  con->width = width;
  con->height = height;
 } else {
  con->content_width = width;
  con->content_height = height;
  container_set_geometry_from_content(con);
 }

 free(box);
}
