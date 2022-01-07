
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef float vlc_tick_t ;
typedef int vlc_player_t ;
struct vlc_player_input {float length; } ;
typedef enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;


 int MSTRTIME_MAX_SIZE ;
 int OSD_HOR_SLIDER ;
 int SEC_FROM_VLC_TICK (float) ;
 int VLC_PLAYER_WHENCE_RELATIVE ;
 float VLC_TICK_INVALID ;
 int secstotimestr (char*,int ) ;
 scalar_t__ vlc_player_input_GetPos (struct vlc_player_input*) ;
 scalar_t__ vlc_player_input_GetTime (struct vlc_player_input*) ;
 int ** vlc_player_osd_HoldAll (int *,size_t*) ;
 int vlc_player_osd_ReleaseAll (int *,int **,size_t) ;
 scalar_t__ vlc_player_vout_IsFullscreen (int *) ;
 int vouts_osd_Message (int **,size_t,char*,char*,...) ;
 int vouts_osd_Slider (int **,size_t,float,int ) ;

void
vlc_player_osd_Position(vlc_player_t *player,
                        struct vlc_player_input *input, vlc_tick_t time,
                        float position, enum vlc_player_whence whence)
{
    if (input->length != VLC_TICK_INVALID)
    {
        if (time == VLC_TICK_INVALID)
            time = position * input->length;
        else
            position = time / (float) input->length;
    }

    size_t count;
    vout_thread_t **vouts = vlc_player_osd_HoldAll(player, &count);

    if (time != VLC_TICK_INVALID)
    {
        if (whence == VLC_PLAYER_WHENCE_RELATIVE)
        {
            time += vlc_player_input_GetTime(input);
            if (time < 0)
                time = 0;
        }

        char time_text[MSTRTIME_MAX_SIZE];
        secstotimestr(time_text, SEC_FROM_VLC_TICK(time));
        if (input->length != VLC_TICK_INVALID)
        {
            char len_text[MSTRTIME_MAX_SIZE];
            secstotimestr(len_text, SEC_FROM_VLC_TICK(input->length));
            vouts_osd_Message(vouts, count, "%s / %s", time_text, len_text);
        }
        else
            vouts_osd_Message(vouts, count, "%s", time_text);
    }

    if (vlc_player_vout_IsFullscreen(player))
    {
        if (whence == VLC_PLAYER_WHENCE_RELATIVE)
        {
            position += vlc_player_input_GetPos(input);
            if (position < 0.f)
                position = 0.f;
        }
        vouts_osd_Slider(vouts, count, position * 100, OSD_HOR_SLIDER);
    }
    vlc_player_osd_ReleaseAll(player, vouts, count);
}
