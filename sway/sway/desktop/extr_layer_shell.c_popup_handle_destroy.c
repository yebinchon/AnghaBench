
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_8__ {int link; } ;
struct TYPE_7__ {int link; } ;
struct TYPE_6__ {int link; } ;
struct TYPE_5__ {int link; } ;
struct sway_layer_popup {TYPE_4__ commit; TYPE_3__ destroy; TYPE_2__ unmap; TYPE_1__ map; } ;


 int destroy ;
 int free (struct sway_layer_popup*) ;
 struct sway_layer_popup* popup ;
 struct sway_layer_popup* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void popup_handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_layer_popup *popup =
  wl_container_of(listener, popup, destroy);

 wl_list_remove(&popup->map.link);
 wl_list_remove(&popup->unmap.link);
 wl_list_remove(&popup->destroy.link);
 wl_list_remove(&popup->commit.link);
 free(popup);
}
