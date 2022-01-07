
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_3__ {scalar_t__ i_cat; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct vlc_player_track_priv {int * vout; TYPE_2__ t; } ;
struct vlc_player_input {int * player; } ;
struct vlc_input_event_vout {int action; int * id; int * vout; int order; } ;


 scalar_t__ VIDEO_ES ;


 int VLC_PLAYER_VOUT_STARTED ;
 int VLC_PLAYER_VOUT_STOPPED ;
 int VLC_VOUT_ORDER_NONE ;
 int assert (int *) ;
 int on_vout_changed ;
 int vlc_assert_unreachable () ;
 int vlc_player_SendEvent (int *,int ,int ,int *,int ,int *) ;
 struct vlc_player_track_priv* vlc_player_input_FindTrackById (struct vlc_player_input*,int *,int *) ;
 int vlc_player_vout_AddCallbacks (int *,int *) ;
 int vlc_player_vout_DelCallbacks (int *,int *) ;

__attribute__((used)) static void
vlc_player_input_HandleVoutEvent(struct vlc_player_input *input,
                                 const struct vlc_input_event_vout *ev)
{
    assert(ev->vout);
    assert(ev->id);

    vlc_player_t *player = input->player;

    struct vlc_player_track_priv *trackpriv =
        vlc_player_input_FindTrackById(input, ev->id, ((void*)0));
    if (!trackpriv)
        return;

    const bool is_video_es = trackpriv->t.fmt.i_cat == VIDEO_ES;

    switch (ev->action)
    {
        case 129:
            trackpriv->vout = ev->vout;
            vlc_player_SendEvent(player, on_vout_changed,
                                 VLC_PLAYER_VOUT_STARTED, ev->vout,
                                 ev->order, ev->id);

            if (is_video_es)
            {

                vlc_player_vout_AddCallbacks(player, ev->vout);
            }
            break;
        case 128:
            if (is_video_es)
            {

                vlc_player_vout_DelCallbacks(player, ev->vout);
            }

            trackpriv->vout = ((void*)0);
            vlc_player_SendEvent(player, on_vout_changed,
                                 VLC_PLAYER_VOUT_STOPPED, ev->vout,
                                 VLC_VOUT_ORDER_NONE, ev->id);
            break;
        default:
            vlc_assert_unreachable();
    }
}
