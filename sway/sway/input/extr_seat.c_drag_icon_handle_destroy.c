
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_8__ {int link; } ;
struct TYPE_7__ {int link; } ;
struct TYPE_6__ {int link; } ;
struct TYPE_10__ {int link; } ;
struct sway_drag_icon {TYPE_3__ destroy; TYPE_2__ map; TYPE_1__ unmap; TYPE_5__ surface_commit; int link; TYPE_4__* wlr_drag_icon; } ;
struct TYPE_9__ {int * data; } ;


 int destroy ;
 int free (struct sway_drag_icon*) ;
 struct sway_drag_icon* icon ;
 struct sway_drag_icon* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void drag_icon_handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_drag_icon *icon = wl_container_of(listener, icon, destroy);
 icon->wlr_drag_icon->data = ((void*)0);
 wl_list_remove(&icon->link);
 wl_list_remove(&icon->surface_commit.link);
 wl_list_remove(&icon->unmap.link);
 wl_list_remove(&icon->map.link);
 wl_list_remove(&icon->destroy.link);
 free(icon);
}
