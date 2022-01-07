
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_output {int dummy; } ;
struct swaybar_output {int dummy; } ;


 int set_output_dirty (struct swaybar_output*) ;

__attribute__((used)) static void output_done(void *data, struct wl_output *wl_output) {
 struct swaybar_output *output = data;
 set_output_dirty(output);
}
