
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zxdg_output_v1 {int dummy; } ;
struct swaybar_output {void* output_y; void* output_x; } ;
typedef void* int32_t ;



__attribute__((used)) static void xdg_output_handle_logical_position(void *data,
  struct zxdg_output_v1 *xdg_output, int32_t x, int32_t y) {
 struct swaybar_output *output = data;
 output->output_x = x;
 output->output_y = y;
}
