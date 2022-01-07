
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct sway_tablet_pad {TYPE_1__ tablet_destroy; int * tablet; } ;


 struct sway_tablet_pad* pad ;
 int tablet_destroy ;
 struct sway_tablet_pad* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_pad_tablet_destroy(struct wl_listener *listener, void *data) {
 struct sway_tablet_pad *pad =
  wl_container_of(listener, pad, tablet_destroy);

 pad->tablet = ((void*)0);

 wl_list_remove(&pad->tablet_destroy.link);
 wl_list_init(&pad->tablet_destroy.link);
}
