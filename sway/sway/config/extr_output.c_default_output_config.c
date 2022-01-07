
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_output_mode {float refresh; int height; int width; } ;
struct wlr_output {struct sway_output* data; } ;
struct sway_output {int detected_subpixel; } ;
struct output_config {int enabled; float refresh_rate; int x; int y; int scale; int dpms_state; int transform; int subpixel; int height; int width; } ;


 int DPMS_ON ;
 int WL_OUTPUT_TRANSFORM_NORMAL ;
 struct wlr_output_mode* wlr_output_preferred_mode (struct wlr_output*) ;

__attribute__((used)) static void default_output_config(struct output_config *oc,
  struct wlr_output *wlr_output) {
 oc->enabled = 1;
 struct wlr_output_mode *mode = wlr_output_preferred_mode(wlr_output);
 if (mode != ((void*)0)) {
  oc->width = mode->width;
  oc->height = mode->height;
  oc->refresh_rate = mode->refresh / 1000.f;
 }
 oc->x = oc->y = -1;
 oc->scale = 1;
 struct sway_output *output = wlr_output->data;
 oc->subpixel = output->detected_subpixel;
 oc->transform = WL_OUTPUT_TRANSFORM_NORMAL;
 oc->dpms_state = DPMS_ON;
}
