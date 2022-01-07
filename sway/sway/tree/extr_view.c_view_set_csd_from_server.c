
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_view {int using_csd; TYPE_1__* xdg_decoration; } ;
struct TYPE_2__ {int wlr_xdg_decoration; } ;


 int SWAY_DEBUG ;
 int WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE ;
 int WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE ;
 int sway_log (int ,char*,struct sway_view*,int) ;
 int wlr_xdg_toplevel_decoration_v1_set_mode (int ,int ) ;

void view_set_csd_from_server(struct sway_view *view, bool enabled) {
 sway_log(SWAY_DEBUG, "Telling view %p to set CSD to %i", view, enabled);
 if (view->xdg_decoration) {
  uint32_t mode = enabled ?
   WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE :
   WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE;
  wlr_xdg_toplevel_decoration_v1_set_mode(
    view->xdg_decoration->wlr_xdg_decoration, mode);
 }
 view->using_csd = enabled;
}
