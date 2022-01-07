
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_samples_count; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;



unsigned mp4mux_track_GetSampleCount(const mp4mux_trackinfo_t *t)
{
    return t->i_samples_count;
}
