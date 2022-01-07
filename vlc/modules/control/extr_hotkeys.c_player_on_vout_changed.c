
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_6__ {struct TYPE_6__* p_sys; } ;
typedef TYPE_1__ vlc_player_t ;
typedef int vlc_es_id_t ;
typedef TYPE_1__ intf_thread_t ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef enum vlc_player_vout_action { ____Placeholder_vlc_player_vout_action } vlc_player_vout_action ;


 int MouseButtonCallback ;
 int MouseMovedCallback ;
 scalar_t__ VIDEO_ES ;


 int VLC_UNUSED (int) ;
 int ViewpointMovedCallback ;
 int var_AddCallback (int *,char*,int ,TYPE_1__*) ;
 int var_DelCallback (int *,char*,int ,TYPE_1__*) ;
 int var_GetBool (int *,char*) ;
 int vlc_assert_unreachable () ;
 scalar_t__ vlc_es_id_GetCat (int *) ;

__attribute__((used)) static void
player_on_vout_changed(vlc_player_t *player,
                       enum vlc_player_vout_action action, vout_thread_t *vout,
                       enum vlc_vout_order order, vlc_es_id_t *es_id,
                       void *data)
{
    VLC_UNUSED(order);
    intf_thread_t *intf = data;

    if (vlc_es_id_GetCat(es_id) != VIDEO_ES)
        return;

    bool vrnav = var_GetBool(vout, "viewpoint-changeable");
    switch (action)
    {
        case 129:
            var_AddCallback(vout, "mouse-button-down", MouseButtonCallback, intf);
            var_AddCallback(vout, "mouse-moved", MouseMovedCallback, intf->p_sys);
            if (vrnav)
                var_AddCallback(vout, "viewpoint-moved",
                                ViewpointMovedCallback, player);
            break;
        case 128:
            var_DelCallback(vout, "mouse-button-down", MouseButtonCallback, intf);
            var_DelCallback(vout, "mouse-moved", MouseMovedCallback, intf->p_sys);
            if (vrnav)
                var_DelCallback(vout, "viewpoint-moved",
                                ViewpointMovedCallback, player);
            break;
        default:
            vlc_assert_unreachable();
    }
}
