
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
struct TYPE_3__ {int link; } ;
struct sway_xdg_popup {TYPE_2__ destroy; TYPE_1__ new_popup; } ;
struct sway_view_child {int * impl; } ;


 int free (struct sway_xdg_popup*) ;
 int popup_impl ;
 int sway_assert (int,char*) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void popup_destroy(struct sway_view_child *child) {
 if (!sway_assert(child->impl == &popup_impl,
   "Expected an xdg_shell popup")) {
  return;
 }
 struct sway_xdg_popup *popup = (struct sway_xdg_popup *)child;
 wl_list_remove(&popup->new_popup.link);
 wl_list_remove(&popup->destroy.link);
 free(popup);
}
