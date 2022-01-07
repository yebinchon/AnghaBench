
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_2__ {unsigned int frame_rate; unsigned int frame_rate_base; int df; int df_fps; int frames_per_10mins; scalar_t__ frame_resolution; } ;
struct vlc_player_timer_source {TYPE_1__ smpte; } ;



__attribute__((used)) static void
vlc_player_UpdateSmpteTimerFPS(vlc_player_t *player,
                               struct vlc_player_timer_source *source,
                               unsigned frame_rate, unsigned frame_rate_base)
{
    (void) player;
    source->smpte.frame_rate = frame_rate;
    source->smpte.frame_rate_base = frame_rate_base;


    source->smpte.frame_resolution = 0;

    unsigned max_frames = frame_rate / frame_rate_base;

    if (max_frames == 29 && (100 * frame_rate / frame_rate_base) == 2997)
    {

        source->smpte.df = 2;
        source->smpte.df_fps = 30;
        source->smpte.frames_per_10mins = 17982;
    }
    else if (max_frames == 59 && (100 * frame_rate / frame_rate_base) == 5994)
    {

        source->smpte.df = 4;
        source->smpte.df_fps = 60;
        source->smpte.frames_per_10mins = 35964;
    }
    else
        source->smpte.df = 0;

    while (max_frames != 0)
    {
        max_frames /= 10;
        source->smpte.frame_resolution++;
    }
}
