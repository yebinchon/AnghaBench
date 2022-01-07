
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct swaybar_output {TYPE_1__* bar; } ;
struct swaybar_hotspot {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct status_line {int dummy; } ;
struct i3bar_block {int dummy; } ;
typedef enum hotspot_event_handling { ____Placeholder_hotspot_event_handling } hotspot_event_handling ;
struct TYPE_2__ {struct status_line* status; } ;


 int i3bar_block_send_click (struct status_line*,struct i3bar_block*,int,int,scalar_t__,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static enum hotspot_event_handling block_hotspot_callback(
  struct swaybar_output *output, struct swaybar_hotspot *hotspot,
  int x, int y, uint32_t button, void *data) {
 struct i3bar_block *block = data;
 struct status_line *status = output->bar->status;
 return i3bar_block_send_click(status, block, x, y, x - hotspot->x,
   y - hotspot->y, hotspot->width, hotspot->height, button);
}
