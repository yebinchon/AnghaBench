
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int dummy; } ;
struct wlr_output {int dummy; } ;


 int wlr_surface_send_leave (struct wlr_surface*,struct wlr_output*) ;

__attribute__((used)) static void surface_send_leave_iterator(struct wlr_surface *surface,
  int x, int y, void *data) {
 struct wlr_output *wlr_output = data;
 wlr_surface_send_leave(surface, wlr_output);
}
