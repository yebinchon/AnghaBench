
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_output {int dummy; } ;
struct swaybar_output {int subpixel; } ;
typedef int int32_t ;



__attribute__((used)) static void output_geometry(void *data, struct wl_output *wl_output, int32_t x,
  int32_t y, int32_t width_mm, int32_t height_mm, int32_t subpixel,
  const char *make, const char *model, int32_t transform) {
 struct swaybar_output *output = data;
 output->subpixel = subpixel;
}
