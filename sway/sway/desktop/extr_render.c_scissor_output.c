
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_renderer {int dummy; } ;
struct wlr_output {int transform; int backend; } ;
struct wlr_box {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_3__ {scalar_t__ y1; scalar_t__ y2; scalar_t__ x1; scalar_t__ x2; } ;
typedef TYPE_1__ pixman_box32_t ;
typedef enum wl_output_transform { ____Placeholder_wl_output_transform } wl_output_transform ;


 int assert (struct wlr_renderer*) ;
 struct wlr_renderer* wlr_backend_get_renderer (int ) ;
 int wlr_box_transform (struct wlr_box*,struct wlr_box*,int,int,int) ;
 int wlr_output_transform_invert (int ) ;
 int wlr_output_transformed_resolution (struct wlr_output*,int*,int*) ;
 int wlr_renderer_scissor (struct wlr_renderer*,struct wlr_box*) ;

__attribute__((used)) static void scissor_output(struct wlr_output *wlr_output,
  pixman_box32_t *rect) {
 struct wlr_renderer *renderer = wlr_backend_get_renderer(wlr_output->backend);
 assert(renderer);

 struct wlr_box box = {
  .x = rect->x1,
  .y = rect->y1,
  .width = rect->x2 - rect->x1,
  .height = rect->y2 - rect->y1,
 };

 int ow, oh;
 wlr_output_transformed_resolution(wlr_output, &ow, &oh);

 enum wl_output_transform transform =
  wlr_output_transform_invert(wlr_output->transform);
 wlr_box_transform(&box, &box, transform, ow, oh);

 wlr_renderer_scissor(renderer, &box);
}
