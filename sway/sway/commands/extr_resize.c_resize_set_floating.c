
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {int width; int x; int height; int y; int content_x; int content_y; int content_width; int content_height; TYPE_1__* workspace; } ;
struct resize_amount {int amount; int unit; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int width; int height; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;




 int arrange_container (struct sway_container*) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 int container_is_scratchpad_hidden (struct sway_container*) ;
 int floating_calculate_constraints (int*,int*,int*,int*) ;
 void* fmax (int,int ) ;
 int fmin (int,int) ;
 int sway_assert (int,char*) ;

__attribute__((used)) static struct cmd_results *resize_set_floating(struct sway_container *con,
  struct resize_amount *width, struct resize_amount *height) {
 int min_width, max_width, min_height, max_height, grow_width = 0, grow_height = 0;
 floating_calculate_constraints(&min_width, &max_width,
   &min_height, &max_height);

 if (width->amount) {
  switch (width->unit) {
  case 129:
   if (container_is_scratchpad_hidden(con)) {
    return cmd_results_new(CMD_FAILURE,
      "Cannot resize a hidden scratchpad container by ppt");
   }

   width->amount = con->workspace->width * width->amount / 100;
   width->unit = 128;

  case 128:
  case 131:
   width->amount = fmax(min_width, fmin(width->amount, max_width));
   grow_width = width->amount - con->width;
   con->x -= grow_width / 2;
   con->width = width->amount;
   break;
  case 130:
   sway_assert(0, "invalid width unit");
   break;
  }
 }

 if (height->amount) {
  switch (height->unit) {
  case 129:
   if (container_is_scratchpad_hidden(con)) {
    return cmd_results_new(CMD_FAILURE,
      "Cannot resize a hidden scratchpad container by ppt");
   }

   height->amount = con->workspace->height * height->amount / 100;
   height->unit = 128;

  case 128:
  case 131:
   height->amount = fmax(min_height, fmin(height->amount, max_height));
   grow_height = height->amount - con->height;
   con->y -= grow_height / 2;
   con->height = height->amount;
   break;
  case 130:
   sway_assert(0, "invalid height unit");
   break;
  }
 }

 con->content_x -= grow_width / 2;
 con->content_y -= grow_height / 2;
 con->content_width += grow_width;
 con->content_height += grow_height;

 arrange_container(con);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
