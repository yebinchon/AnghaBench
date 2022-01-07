
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_output {int dirty; scalar_t__ surface; scalar_t__ frame_scheduled; } ;


 int render_frame (struct swaybar_output*) ;

__attribute__((used)) static void set_output_dirty(struct swaybar_output *output) {
 if (output->frame_scheduled) {
  output->dirty = 1;
 } else if (output->surface) {
  render_frame(output);
 }
}
