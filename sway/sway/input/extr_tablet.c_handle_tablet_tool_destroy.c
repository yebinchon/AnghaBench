
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_4__ {int link; } ;
struct TYPE_3__ {int link; } ;
struct sway_tablet_tool {TYPE_2__ set_cursor; TYPE_1__ tool_destroy; } ;


 int free (struct sway_tablet_tool*) ;
 struct sway_tablet_tool* tool ;
 int tool_destroy ;
 struct sway_tablet_tool* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_tablet_tool_destroy(struct wl_listener *listener, void *data) {
 struct sway_tablet_tool *tool =
  wl_container_of(listener, tool, tool_destroy);

 wl_list_remove(&tool->tool_destroy.link);
 wl_list_remove(&tool->set_cursor.link);

 free(tool);
}
