
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_surface {int dummy; } ;
struct wlr_presentation_event {int dummy; } ;
struct wlr_box {int dummy; } ;
struct sway_output {int dummy; } ;
struct TYPE_2__ {int presentation; } ;


 TYPE_1__ server ;
 int wlr_presentation_send_surface_presented (int ,struct wlr_surface*,struct wlr_presentation_event*) ;

__attribute__((used)) static void send_presented_iterator(struct sway_output *output,
  struct wlr_surface *surface, struct wlr_box *box, float rotation,
  void *data) {
 struct wlr_presentation_event *event = data;
 wlr_presentation_send_surface_presented(server.presentation,
  surface, event);
}
