
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int dummy; } ;
struct wlr_box {int y; int x; } ;
struct sway_output {int dummy; } ;


 int output_surface_for_each_surface (struct sway_output*,struct wlr_surface*,int ,int ,int (*) (struct sway_output*,struct wlr_surface*,struct wlr_box*,float,void*),void*) ;
 int render_surface_iterator (struct sway_output*,struct wlr_surface*,struct wlr_box*,float,void*) ;

__attribute__((used)) static void render_popup_iterator(struct sway_output *output,
  struct wlr_surface *surface, struct wlr_box *box, float rotation,
  void *data) {

 render_surface_iterator(output, surface, box, rotation, data);


 output_surface_for_each_surface(output, surface, box->x, box->y,
   render_surface_iterator, data);
}
