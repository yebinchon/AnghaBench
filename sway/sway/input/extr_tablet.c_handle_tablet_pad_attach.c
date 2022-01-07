
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_tablet_tool {struct sway_tablet_tool* data; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int tablet; } ;
struct sway_tablet_pad {int dummy; } ;


 int attach ;
 int attach_tablet_pad (struct sway_tablet_pad*,int ) ;
 struct sway_tablet_pad* pad ;
 struct sway_tablet_pad* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_tablet_pad_attach(struct wl_listener *listener,
  void *data) {
 struct sway_tablet_pad *pad = wl_container_of(listener, pad, attach);
 struct wlr_tablet_tool *wlr_tool = data;
 struct sway_tablet_tool *tool = wlr_tool->data;

 if (!tool) {
  return;
 }

 attach_tablet_pad(pad, tool->tablet);
}
