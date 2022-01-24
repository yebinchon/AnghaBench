#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_track_vector ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_18__ {int selected; struct TYPE_18__* es_id; } ;
struct vlc_player_track_priv {TYPE_7__ t; } ;
struct TYPE_15__ {int current_video_track; int current_audio_track; int current_subtitle_track; } ;
struct TYPE_16__ {int default_video_track; int default_audio_track; int default_subtitle_track; TYPE_3__ states; } ;
struct vlc_player_input {TYPE_4__ ml; int /*<<< orphan*/ * player; } ;
struct vlc_input_event_es {int action; scalar_t__ id; TYPE_5__* fmt; scalar_t__ title; } ;
struct TYPE_13__ {int i_magazine; } ;
struct TYPE_14__ {TYPE_1__ teletext; } ;
struct TYPE_17__ {scalar_t__ i_cat; scalar_t__ i_codec; int i_id; TYPE_2__ subs; } ;

/* Variables and functions */
#define  AUDIO_ES 135 
#define  SPU_ES 134 
#define  VIDEO_ES 133 
 scalar_t__ VLC_CODEC_TELETEXT ; 
#define  VLC_INPUT_ES_ADDED 132 
#define  VLC_INPUT_ES_DELETED 131 
#define  VLC_INPUT_ES_SELECTED 130 
#define  VLC_INPUT_ES_UNSELECTED 129 
#define  VLC_INPUT_ES_UPDATED 128 
 TYPE_7__* VLC_PLAYER_LIST_ADDED ; 
 TYPE_7__* VLC_PLAYER_LIST_REMOVED ; 
 TYPE_7__* VLC_PLAYER_LIST_UPDATED ; 
 int /*<<< orphan*/  VLC_PLAYER_SELECT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_track_list_changed ; 
 int /*<<< orphan*/  on_track_selection_changed ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*,TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC5 (struct vlc_player_input*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_player_input*,struct vlc_input_event_es const*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_player_track_priv*) ; 
 struct vlc_player_track_priv* FUNC8 (scalar_t__,scalar_t__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct vlc_player_track_priv*,scalar_t__,TYPE_5__*) ; 
 struct vlc_player_track_priv* FUNC10 (int /*<<< orphan*/ *,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct vlc_player_track_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC13(struct vlc_player_input *input,
                               const struct vlc_input_event_es *ev)
{
    FUNC0(ev->id && ev->title && ev->fmt);

    if (ev->fmt->i_cat == SPU_ES && ev->fmt->i_codec == VLC_CODEC_TELETEXT
     && (ev->fmt->subs.teletext.i_magazine == 1
      || ev->fmt->subs.teletext.i_magazine > 8))
    {
        FUNC6(input, ev);
        return;
    }

    vlc_player_track_vector *vec =
        FUNC5(input, ev->fmt->i_cat);
    if (!vec)
        return; /* UNKNOWN_ES or DATA_ES not handled */

    vlc_player_t *player = input->player;
    struct vlc_player_track_priv *trackpriv;
    switch (ev->action)
    {
        case VLC_INPUT_ES_ADDED:
            trackpriv = FUNC8(ev->id, ev->title, ev->fmt);
            if (!trackpriv)
                break;

            if (!FUNC11(vec, trackpriv))
            {
                FUNC7(trackpriv);
                break;
            }
            FUNC4(player, on_track_list_changed,
                                 VLC_PLAYER_LIST_ADDED, &trackpriv->t);
            switch (ev->fmt->i_cat)
            {
                case VIDEO_ES:
                    /* If we need to restore a specific track, let's do it upon
                     * insertion. The initialization of the default track when
                     * we don't have a value will be done when the first track
                     * gets selected */
                    if (input->ml.states.current_video_track != -2 &&
                        input->ml.states.current_video_track == ev->fmt->i_id)
                        FUNC3(input->player, &trackpriv->t,
                                               VLC_PLAYER_SELECT_EXCLUSIVE);
                    break;
                case AUDIO_ES:
                    if (input->ml.states.current_audio_track != -2 &&
                        input->ml.states.current_audio_track == ev->fmt->i_id)
                        FUNC3(input->player, &trackpriv->t,
                                               VLC_PLAYER_SELECT_EXCLUSIVE);
                    break;
                case SPU_ES:
                    if (input->ml.states.current_subtitle_track != -2 &&
                        input->ml.states.current_subtitle_track == ev->fmt->i_id)
                        FUNC3(input->player, &trackpriv->t,
                                               VLC_PLAYER_SELECT_EXCLUSIVE);
                default:
                    break;
            }
            break;
        case VLC_INPUT_ES_DELETED:
        {
            size_t idx;
            trackpriv = FUNC10(vec, ev->id, &idx);
            if (trackpriv)
            {
                FUNC4(player, on_track_list_changed,
                                     VLC_PLAYER_LIST_REMOVED, &trackpriv->t);
                FUNC12(vec, idx);
                FUNC7(trackpriv);
            }
            break;
        }
        case VLC_INPUT_ES_UPDATED:
            trackpriv = FUNC10(vec, ev->id, NULL);
            if (!trackpriv)
                break;
            if (FUNC9(trackpriv, ev->title, ev->fmt) != 0)
                break;
            FUNC4(player, on_track_list_changed,
                                 VLC_PLAYER_LIST_UPDATED, &trackpriv->t);
            break;
        case VLC_INPUT_ES_SELECTED:
            trackpriv = FUNC10(vec, ev->id, NULL);
            if (trackpriv)
            {
                trackpriv->t.selected = true;
                FUNC4(player, on_track_selection_changed,
                                     NULL, trackpriv->t.es_id);
            }
            switch (ev->fmt->i_cat)
            {
                /* Save the default selected track to know if it changed
                 * when the playback stops, in order to save the user's
                 * explicitely selected track */
                case VIDEO_ES:
                    if (input->ml.default_video_track == -2)
                        input->ml.default_video_track = ev->fmt->i_id;
                    break;
                case AUDIO_ES:
                    if (input->ml.default_audio_track == -2)
                        input->ml.default_audio_track = ev->fmt->i_id;
                    break;
                case SPU_ES:
                    if (input->ml.default_subtitle_track == -2)
                        input->ml.default_subtitle_track = ev->fmt->i_id;
                    break;
                default:
                    break;
            }
            break;
        case VLC_INPUT_ES_UNSELECTED:
            trackpriv = FUNC10(vec, ev->id, NULL);
            if (trackpriv)
            {
                FUNC2(player, ev->id);
                trackpriv->t.selected = false;
                FUNC4(player, on_track_selection_changed,
                                     trackpriv->t.es_id, NULL);
            }
            break;
        default:
            FUNC1();
    }
}