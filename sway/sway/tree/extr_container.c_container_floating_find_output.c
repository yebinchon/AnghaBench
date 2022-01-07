
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_box {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_container {int x; int width; int y; int height; } ;
struct TYPE_4__ {TYPE_1__* outputs; } ;
struct TYPE_3__ {int length; struct sway_output** items; } ;


 double DBL_MAX ;
 int output_get_box (struct sway_output*,struct wlr_box*) ;
 TYPE_2__* root ;
 int wlr_box_closest_point (struct wlr_box*,double,double,double*,double*) ;

struct sway_output *container_floating_find_output(struct sway_container *con) {
 double center_x = con->x + con->width / 2;
 double center_y = con->y + con->height / 2;
 struct sway_output *closest_output = ((void*)0);
 double closest_distance = DBL_MAX;
 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  struct wlr_box output_box;
  double closest_x, closest_y;
  output_get_box(output, &output_box);
  wlr_box_closest_point(&output_box, center_x, center_y,
    &closest_x, &closest_y);
  if (center_x == closest_x && center_y == closest_y) {

   return output;
  }
  double x_dist = closest_x - center_x;
  double y_dist = closest_y - center_y;
  double distance = x_dist * x_dist + y_dist * y_dist;
  if (distance < closest_distance) {
   closest_output = output;
   closest_distance = distance;
  }
 }
 return closest_output;
}
