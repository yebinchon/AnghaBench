
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i_samples_count; scalar_t__ i_samples_max; int b_hasbframes; int i_read_duration; TYPE_2__* samples; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;
struct TYPE_8__ {scalar_t__ i_pts_dts; int i_length; } ;
typedef TYPE_2__ mp4mux_sample_t ;


 scalar_t__ __MAX (int ,int ) ;
 TYPE_2__* vlc_reallocarray (TYPE_2__*,scalar_t__,int) ;

bool mp4mux_track_AddSample(mp4mux_trackinfo_t *t, const mp4mux_sample_t *entry)
{

    if (t->i_samples_count + 2 >= t->i_samples_max)
    {
        if(t->i_samples_max + 1000 < t->i_samples_max)
            return 0;
        mp4mux_sample_t *p_realloc = vlc_reallocarray(t->samples,
                                                      t->i_samples_max + 1000,
                                                      sizeof(*p_realloc));
        if(!p_realloc)
            return 0;
        t->samples = p_realloc;
        t->i_samples_max += 1000;
    }
    t->samples[t->i_samples_count++] = *entry;
    if(!t->b_hasbframes && entry->i_pts_dts != 0)
        t->b_hasbframes = 1;
    t->i_read_duration += __MAX(0, entry->i_length);
    return 1;
}
