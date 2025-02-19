
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_8__ {scalar_t__ i_length; } ;
typedef TYPE_1__ mp4mux_sample_t ;
struct TYPE_9__ {scalar_t__ i_start_time; scalar_t__ i_duration; void* i_start_offset; } ;
typedef TYPE_2__ mp4mux_edit_t ;
struct TYPE_10__ {scalar_t__ i_first_dts; scalar_t__ i_last_pts; scalar_t__ i_last_dts; int tinfo; } ;
typedef TYPE_3__ mp4_stream_t ;


 scalar_t__ VLC_TICK_INVALID ;
 void* __MAX (int ,scalar_t__) ;
 int mp4mux_track_AddEdit (int ,TYPE_2__*) ;
 TYPE_2__* mp4mux_track_GetLastEdit (int ) ;
 TYPE_1__* mp4mux_track_GetLastSample (int ) ;

__attribute__((used)) static bool CreateCurrentEdit(mp4_stream_t *p_stream, vlc_tick_t i_mux_start_dts,
                              bool b_fragmented)
{
    const mp4mux_edit_t *p_lastedit = mp4mux_track_GetLastEdit(p_stream->tinfo);


    if(p_lastedit != ((void*)0) && b_fragmented)
        return 1;

    const mp4mux_sample_t *p_lastsample = mp4mux_track_GetLastSample(p_stream->tinfo);
    if(p_lastsample == ((void*)0))
        return 1;

    mp4mux_edit_t newedit;

    if(p_lastedit == ((void*)0))
    {
        newedit.i_start_time = 0;
        newedit.i_start_offset = __MAX(0, p_stream->i_first_dts - i_mux_start_dts);
    }
    else
    {
        newedit.i_start_time = __MAX(0, p_lastedit->i_start_time + p_lastedit->i_duration);
        newedit.i_start_offset = 0;
    }

    if(b_fragmented)
    {
        newedit.i_duration = 0;
    }
    else
    {
        if(p_stream->i_last_pts != VLC_TICK_INVALID)
            newedit.i_duration = p_stream->i_last_pts - p_stream->i_first_dts;
        else
            newedit.i_duration = p_stream->i_last_dts - p_stream->i_first_dts;

        newedit.i_duration += p_lastsample->i_length;
    }

    return mp4mux_track_AddEdit(p_stream->tinfo, &newedit);
}
