
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_12__ {int pl_info_lock; int p_out; int b_menu; TYPE_3__* p_clip_info; int bluray; } ;
typedef TYPE_5__ demux_sys_t ;
struct TYPE_10__ {int audio_stream_count; int pg_stream_count; TYPE_2__* pg_streams; TYPE_1__* audio_streams; } ;
struct TYPE_9__ {int pid; scalar_t__ lang; } ;
struct TYPE_8__ {int pid; scalar_t__ lang; } ;


 int AUDIO_ES ;
 int BD_EVENT_AUDIO_STREAM ;
 int BD_EVENT_PG_TEXTST_STREAM ;
 int BLURAY_AUDIO_STREAM ;
 int BLURAY_ES_OUT_CONTROL_SET_ES_BY_PID ;
 int BLURAY_PG_TEXTST_STREAM ;
 int BLURAY_PLAYER_SETTING_AUDIO_LANG ;
 int BLURAY_PLAYER_SETTING_PG_LANG ;
 int SPU_ES ;
 int bd_select_stream (int ,int ,int,int) ;
 int bd_set_player_setting_str (int ,int ,char const*) ;
 int es_out_Control (int ,int ,int ,int) ;
 int msg_Warn (TYPE_4__*,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void blurayOnUserStreamSelection(demux_t *p_demux, int i_pid)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    vlc_mutex_lock(&p_sys->pl_info_lock);

    if(i_pid == -AUDIO_ES)
        bd_select_stream(p_sys->bluray, BLURAY_AUDIO_STREAM, 0, 0);
    else if(i_pid == -SPU_ES)
        bd_select_stream(p_sys->bluray, BLURAY_PG_TEXTST_STREAM, 0, 0);
    else if (p_sys->p_clip_info)
    {
        if ((i_pid & 0xff00) == 0x1100) {
            bool b_in_playlist = 0;

            for (int i_id = 0; i_id < p_sys->p_clip_info->audio_stream_count; i_id++) {
                if (i_pid == p_sys->p_clip_info->audio_streams[i_id].pid) {
                    bd_select_stream(p_sys->bluray, BLURAY_AUDIO_STREAM, i_id + 1, 1);

                    if(!p_sys->b_menu)
                        bd_set_player_setting_str(p_sys->bluray, BLURAY_PLAYER_SETTING_AUDIO_LANG,
                                  (const char *) p_sys->p_clip_info->audio_streams[i_id].lang);
                    b_in_playlist = 1;
                    break;
                }
            }
            if(!b_in_playlist && !p_sys->b_menu)
            {


                msg_Warn(p_demux, "Incorrect playlist for menuless track, forcing");
                es_out_Control(p_sys->p_out, BLURAY_ES_OUT_CONTROL_SET_ES_BY_PID,
                               BD_EVENT_AUDIO_STREAM, i_pid);
            }
        } else if ((i_pid & 0xff00) == 0x1200 || i_pid == 0x1800) {
            bool b_in_playlist = 0;

            for (int i_id = 0; i_id < p_sys->p_clip_info->pg_stream_count; i_id++) {
                if (i_pid == p_sys->p_clip_info->pg_streams[i_id].pid) {
                    bd_select_stream(p_sys->bluray, BLURAY_PG_TEXTST_STREAM, i_id + 1, 1);
                    if(!p_sys->b_menu)
                        bd_set_player_setting_str(p_sys->bluray, BLURAY_PLAYER_SETTING_PG_LANG,
                                   (const char *) p_sys->p_clip_info->pg_streams[i_id].lang);
                    b_in_playlist = 1;
                    break;
                }
            }
            if(!b_in_playlist && !p_sys->b_menu)
            {
                msg_Warn(p_demux, "Incorrect playlist for menuless track, forcing");
                es_out_Control(p_sys->p_out, BLURAY_ES_OUT_CONTROL_SET_ES_BY_PID,
                               BD_EVENT_PG_TEXTST_STREAM, i_pid);
            }
        }
    }

    vlc_mutex_unlock(&p_sys->pl_info_lock);
}
