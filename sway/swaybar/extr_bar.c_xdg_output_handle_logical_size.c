
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zxdg_output_v1 {int dummy; } ;
struct swaybar_output {void* output_width; void* output_height; } ;
typedef void* int32_t ;



__attribute__((used)) static void xdg_output_handle_logical_size(void *data,
  struct zxdg_output_v1 *xdg_output, int32_t width, int32_t height) {
 struct swaybar_output *output = data;
 output->output_height = height;
 output->output_width = width;
}
