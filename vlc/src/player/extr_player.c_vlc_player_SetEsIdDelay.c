
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_6__ {int name; TYPE_1__ fmt; } ;
struct vlc_player_track_priv {scalar_t__ delay; TYPE_2__ t; } ;
struct vlc_player_input {int thread; } ;
struct TYPE_7__ {int es_delay; } ;
typedef TYPE_3__ input_control_param_t ;
typedef enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;


 scalar_t__ AUDIO_ES ;
 int INPUT_CONTROL_SET_ES_DELAY ;
 scalar_t__ INT64_MAX ;
 scalar_t__ MS_FROM_VLC_TICK (scalar_t__) ;
 scalar_t__ SPU_ES ;
 int VLC_EGENERIC ;
 int VLC_PLAYER_WHENCE_ABSOLUTE ;
 int VLC_SUCCESS ;
 int _ (char*) ;
 int input_ControlPush (int ,int ,TYPE_3__ const*) ;
 int on_track_delay_changed ;
 int vlc_player_SendEvent (int *,int ,int *,scalar_t__) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 struct vlc_player_track_priv* vlc_player_input_FindTrackById (struct vlc_player_input*,int *,int *) ;
 int vlc_player_osd_Message (int *,int ,int ,int) ;

int
vlc_player_SetEsIdDelay(vlc_player_t *player, vlc_es_id_t *es_id,
                        vlc_tick_t delay, enum vlc_player_whence whence)
{
    bool absolute = whence == VLC_PLAYER_WHENCE_ABSOLUTE;
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input)
        return VLC_EGENERIC;

    struct vlc_player_track_priv *trackpriv =
        vlc_player_input_FindTrackById(input, es_id, ((void*)0));
    if (trackpriv == ((void*)0) ||
        (trackpriv->t.fmt.i_cat != AUDIO_ES && trackpriv->t.fmt.i_cat != SPU_ES))
        return VLC_EGENERIC;

    if (absolute)
        trackpriv->delay = delay;
    else
    {
        if (trackpriv->delay == INT64_MAX)
            trackpriv->delay = 0;
        trackpriv->delay += delay;
        delay = trackpriv->delay;
    }

    const input_control_param_t param = { .es_delay = { es_id, delay } };
    int ret = input_ControlPush(input->thread, INPUT_CONTROL_SET_ES_DELAY,
                                &param);
    if (ret == VLC_SUCCESS)
    {
        if (delay != INT64_MAX)
            vlc_player_osd_Message(player, _("%s delay: %i ms"),
                                   trackpriv->t.name,
                                   (int)MS_FROM_VLC_TICK(delay));
        vlc_player_SendEvent(player, on_track_delay_changed, es_id, delay);
    }

    return VLC_SUCCESS;
}
