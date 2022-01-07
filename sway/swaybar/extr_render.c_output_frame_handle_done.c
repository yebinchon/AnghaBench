
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_callback {int dummy; } ;
struct swaybar_output {int frame_scheduled; int dirty; } ;


 int render_frame (struct swaybar_output*) ;
 int wl_callback_destroy (struct wl_callback*) ;

__attribute__((used)) static void output_frame_handle_done(void *data, struct wl_callback *callback,
  uint32_t time) {
 wl_callback_destroy(callback);
 struct swaybar_output *output = data;
 output->frame_scheduled = 0;
 if (output->dirty) {
  render_frame(output);
  output->dirty = 0;
 }
}
