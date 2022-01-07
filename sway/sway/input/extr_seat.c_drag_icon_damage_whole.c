
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_drag_icon {int y; int x; TYPE_1__* wlr_drag_icon; } ;
struct TYPE_2__ {int surface; int mapped; } ;


 int desktop_damage_surface (int ,int ,int ,int) ;

__attribute__((used)) static void drag_icon_damage_whole(struct sway_drag_icon *icon) {
 if (!icon->wlr_drag_icon->mapped) {
  return;
 }
 desktop_damage_surface(icon->wlr_drag_icon->surface, icon->x, icon->y, 1);
}
