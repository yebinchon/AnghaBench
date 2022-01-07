
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_drag_icon {int dummy; } ;


 int drag_icon_damage_whole (struct sway_drag_icon*) ;
 struct sway_drag_icon* icon ;
 int unmap ;
 struct sway_drag_icon* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void drag_icon_handle_unmap(struct wl_listener *listener, void *data) {
 struct sway_drag_icon *icon = wl_container_of(listener, icon, unmap);
 drag_icon_damage_whole(icon);
}
