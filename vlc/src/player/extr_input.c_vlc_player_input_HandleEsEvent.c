
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_player_track_vector ;
typedef int vlc_player_t ;
struct TYPE_18__ {int selected; struct TYPE_18__* es_id; } ;
struct vlc_player_track_priv {TYPE_7__ t; } ;
struct TYPE_15__ {int current_video_track; int current_audio_track; int current_subtitle_track; } ;
struct TYPE_16__ {int default_video_track; int default_audio_track; int default_subtitle_track; TYPE_3__ states; } ;
struct vlc_player_input {TYPE_4__ ml; int * player; } ;
struct vlc_input_event_es {int action; scalar_t__ id; TYPE_5__* fmt; scalar_t__ title; } ;
struct TYPE_13__ {int i_magazine; } ;
struct TYPE_14__ {TYPE_1__ teletext; } ;
struct TYPE_17__ {scalar_t__ i_cat; scalar_t__ i_codec; int i_id; TYPE_2__ subs; } ;





 scalar_t__ VLC_CODEC_TELETEXT ;





 TYPE_7__* VLC_PLAYER_LIST_ADDED ;
 TYPE_7__* VLC_PLAYER_LIST_REMOVED ;
 TYPE_7__* VLC_PLAYER_LIST_UPDATED ;
 int VLC_PLAYER_SELECT_EXCLUSIVE ;
 int assert (int ) ;
 int on_track_list_changed ;
 int on_track_selection_changed ;
 int vlc_assert_unreachable () ;
 int vlc_player_RemoveTimerSource (int *,scalar_t__) ;
 int vlc_player_SelectTrack (int *,TYPE_7__*,int ) ;
 int vlc_player_SendEvent (int *,int ,TYPE_7__*,TYPE_7__*) ;
 int * vlc_player_input_GetTrackVector (struct vlc_player_input*,scalar_t__) ;
 int vlc_player_input_HandleTeletextMenu (struct vlc_player_input*,struct vlc_input_event_es const*) ;
 int vlc_player_track_priv_Delete (struct vlc_player_track_priv*) ;
 struct vlc_player_track_priv* vlc_player_track_priv_New (scalar_t__,scalar_t__,TYPE_5__*) ;
 int vlc_player_track_priv_Update (struct vlc_player_track_priv*,scalar_t__,TYPE_5__*) ;
 struct vlc_player_track_priv* vlc_player_track_vector_FindById (int *,scalar_t__,size_t*) ;
 int vlc_vector_push (int *,struct vlc_player_track_priv*) ;
 int vlc_vector_remove (int *,size_t) ;

__attribute__((used)) static void
vlc_player_input_HandleEsEvent(struct vlc_player_input *input,
                               const struct vlc_input_event_es *ev)
{
    assert(ev->id && ev->title && ev->fmt);

    if (ev->fmt->i_cat == 134 && ev->fmt->i_codec == VLC_CODEC_TELETEXT
     && (ev->fmt->subs.teletext.i_magazine == 1
      || ev->fmt->subs.teletext.i_magazine > 8))
    {
        vlc_player_input_HandleTeletextMenu(input, ev);
        return;
    }

    vlc_player_track_vector *vec =
        vlc_player_input_GetTrackVector(input, ev->fmt->i_cat);
    if (!vec)
        return;

    vlc_player_t *player = input->player;
    struct vlc_player_track_priv *trackpriv;
    switch (ev->action)
    {
        case 132:
            trackpriv = vlc_player_track_priv_New(ev->id, ev->title, ev->fmt);
            if (!trackpriv)
                break;

            if (!vlc_vector_push(vec, trackpriv))
            {
                vlc_player_track_priv_Delete(trackpriv);
                break;
            }
            vlc_player_SendEvent(player, on_track_list_changed,
                                 VLC_PLAYER_LIST_ADDED, &trackpriv->t);
            switch (ev->fmt->i_cat)
            {
                case 133:




                    if (input->ml.states.current_video_track != -2 &&
                        input->ml.states.current_video_track == ev->fmt->i_id)
                        vlc_player_SelectTrack(input->player, &trackpriv->t,
                                               VLC_PLAYER_SELECT_EXCLUSIVE);
                    break;
                case 135:
                    if (input->ml.states.current_audio_track != -2 &&
                        input->ml.states.current_audio_track == ev->fmt->i_id)
                        vlc_player_SelectTrack(input->player, &trackpriv->t,
                                               VLC_PLAYER_SELECT_EXCLUSIVE);
                    break;
                case 134:
                    if (input->ml.states.current_subtitle_track != -2 &&
                        input->ml.states.current_subtitle_track == ev->fmt->i_id)
                        vlc_player_SelectTrack(input->player, &trackpriv->t,
                                               VLC_PLAYER_SELECT_EXCLUSIVE);
                default:
                    break;
            }
            break;
        case 131:
        {
            size_t idx;
            trackpriv = vlc_player_track_vector_FindById(vec, ev->id, &idx);
            if (trackpriv)
            {
                vlc_player_SendEvent(player, on_track_list_changed,
                                     VLC_PLAYER_LIST_REMOVED, &trackpriv->t);
                vlc_vector_remove(vec, idx);
                vlc_player_track_priv_Delete(trackpriv);
            }
            break;
        }
        case 128:
            trackpriv = vlc_player_track_vector_FindById(vec, ev->id, ((void*)0));
            if (!trackpriv)
                break;
            if (vlc_player_track_priv_Update(trackpriv, ev->title, ev->fmt) != 0)
                break;
            vlc_player_SendEvent(player, on_track_list_changed,
                                 VLC_PLAYER_LIST_UPDATED, &trackpriv->t);
            break;
        case 130:
            trackpriv = vlc_player_track_vector_FindById(vec, ev->id, ((void*)0));
            if (trackpriv)
            {
                trackpriv->t.selected = 1;
                vlc_player_SendEvent(player, on_track_selection_changed,
                                     ((void*)0), trackpriv->t.es_id);
            }
            switch (ev->fmt->i_cat)
            {



                case 133:
                    if (input->ml.default_video_track == -2)
                        input->ml.default_video_track = ev->fmt->i_id;
                    break;
                case 135:
                    if (input->ml.default_audio_track == -2)
                        input->ml.default_audio_track = ev->fmt->i_id;
                    break;
                case 134:
                    if (input->ml.default_subtitle_track == -2)
                        input->ml.default_subtitle_track = ev->fmt->i_id;
                    break;
                default:
                    break;
            }
            break;
        case 129:
            trackpriv = vlc_player_track_vector_FindById(vec, ev->id, ((void*)0));
            if (trackpriv)
            {
                vlc_player_RemoveTimerSource(player, ev->id);
                trackpriv->t.selected = 0;
                vlc_player_SendEvent(player, on_track_selection_changed,
                                     trackpriv->t.es_id, ((void*)0));
            }
            break;
        default:
            vlc_assert_unreachable();
    }
}
