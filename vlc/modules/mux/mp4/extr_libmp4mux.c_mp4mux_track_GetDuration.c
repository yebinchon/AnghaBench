
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int i_read_duration; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;



vlc_tick_t mp4mux_track_GetDuration(const mp4mux_trackinfo_t *t)
{
    return t->i_read_duration;
}
