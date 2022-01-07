
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_box {int width; int height; } ;
struct TYPE_4__ {int floating_minimum_width; int floating_minimum_height; int floating_maximum_width; int floating_maximum_height; } ;
struct TYPE_3__ {int output_layout; } ;


 int INT_MAX ;
 TYPE_2__* config ;
 TYPE_1__* root ;
 struct wlr_box* wlr_output_layout_get_box (int ,int *) ;

void floating_calculate_constraints(int *min_width, int *max_width,
  int *min_height, int *max_height) {
 if (config->floating_minimum_width == -1) {
  *min_width = 0;
 } else if (config->floating_minimum_width == 0) {
  *min_width = 75;
 } else {
  *min_width = config->floating_minimum_width;
 }

 if (config->floating_minimum_height == -1) {
  *min_height = 0;
 } else if (config->floating_minimum_height == 0) {
  *min_height = 50;
 } else {
  *min_height = config->floating_minimum_height;
 }

 struct wlr_box *box = wlr_output_layout_get_box(root->output_layout, ((void*)0));

 if (config->floating_maximum_width == -1) {
  *max_width = INT_MAX;
 } else if (config->floating_maximum_width == 0) {
  *max_width = box->width;
 } else {
  *max_width = config->floating_maximum_width;
 }

 if (config->floating_maximum_height == -1) {
  *max_height = INT_MAX;
 } else if (config->floating_maximum_height == 0) {
  *max_height = box->height;
 } else {
  *max_height = config->floating_maximum_height;
 }

}
