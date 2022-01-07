
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_samples_count; int const* samples; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;
typedef int mp4mux_sample_t ;



const mp4mux_sample_t *mp4mux_track_GetLastSample(const mp4mux_trackinfo_t *t)
{
    if(t->i_samples_count)
        return &t->samples[t->i_samples_count - 1];
    else return ((void*)0);
}
