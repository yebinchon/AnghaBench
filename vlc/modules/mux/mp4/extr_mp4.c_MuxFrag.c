
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_20__ {TYPE_3__** pp_inputs; scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_21__ {scalar_t__ i_start_dts; scalar_t__ i_written_duration; unsigned int i_nb_streams; scalar_t__ i_read_duration; TYPE_4__** pp_streams; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_22__ {scalar_t__ p_sys; } ;
typedef TYPE_3__ sout_input_t ;
struct TYPE_19__ {scalar_t__ p_first; } ;
struct TYPE_23__ {scalar_t__ i_first_dts; int b_hasiframes; scalar_t__ i_written_duration; TYPE_14__ read; int tinfo; TYPE_8__* p_held_entry; int i_current_run; scalar_t__ i_last_iframe_time; } ;
typedef TYPE_4__ mp4_stream_t ;
typedef int mp4_fragentry_t ;
struct TYPE_24__ {scalar_t__ i_dts; int i_length; int i_flags; scalar_t__ i_pts; } ;
typedef TYPE_5__ block_t ;
struct TYPE_26__ {int * p_next; int i_run; TYPE_5__* p_block; } ;
struct TYPE_25__ {scalar_t__ i_cat; } ;


 scalar_t__ AUDIO_ES ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_TYPE_I ;
 TYPE_5__* BlockDequeue (TYPE_3__*,TYPE_4__*) ;
 int ENQUEUE_ENTRY (TYPE_14__,TYPE_8__*) ;
 scalar_t__ FRAGMENT_LENGTH ;
 int LengthLocalFixup (TYPE_1__*,TYPE_4__*,TYPE_5__*) ;
 scalar_t__ VIDEO_ES ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int WriteFragments (TYPE_1__*,int) ;
 scalar_t__ __MAX (int ,int) ;
 TYPE_8__* malloc (int) ;
 int mp4mux_track_ForceDuration (int ,scalar_t__) ;
 scalar_t__ mp4mux_track_GetDuration (int ) ;
 TYPE_7__* mp4mux_track_GetFmt (int ) ;
 int mp4mux_track_HasBFrames (int ) ;
 int mp4mux_track_SetHasBFrames (int ) ;
 int sout_MuxGetStream (TYPE_1__*,int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int MuxFrag(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = (sout_mux_sys_t*) p_mux->p_sys;

    int i_stream = sout_MuxGetStream(p_mux, 1, ((void*)0));
    if (i_stream < 0)
        return VLC_SUCCESS;

    sout_input_t *p_input = p_mux->pp_inputs[i_stream];
    mp4_stream_t *p_stream = (mp4_stream_t*) p_input->p_sys;
    block_t *p_currentblock = BlockDequeue(p_input, p_stream);
    if( !p_currentblock )
        return VLC_SUCCESS;


    if( p_stream->i_first_dts == VLC_TICK_INVALID )
    {
        p_stream->i_first_dts = p_currentblock->i_dts;
        if( p_sys->i_start_dts == VLC_TICK_INVALID )
            p_sys->i_start_dts = p_currentblock->i_dts;
    }


    if (p_stream->p_held_entry)
    {
        block_t *p_heldblock = p_stream->p_held_entry->p_block;


        if (p_heldblock->i_length < 1)
        {


            if ((p_currentblock->i_flags & BLOCK_FLAG_DISCONTINUITY) == 0)
                p_heldblock->i_length = p_currentblock->i_dts - p_heldblock->i_dts;

            if (p_heldblock->i_length < 1)
                LengthLocalFixup(p_mux, p_stream, p_heldblock);
        }


        ENQUEUE_ENTRY(p_stream->read, p_stream->p_held_entry);
        p_stream->p_held_entry = ((void*)0);

        if (p_stream->b_hasiframes && (p_heldblock->i_flags & BLOCK_FLAG_TYPE_I) &&
            mp4mux_track_GetDuration(p_stream->tinfo) - p_sys->i_written_duration < FRAGMENT_LENGTH)
        {


            p_stream->i_last_iframe_time = mp4mux_track_GetDuration(p_stream->tinfo);
        }


        mp4mux_track_ForceDuration(p_stream->tinfo,
                                 mp4mux_track_GetDuration(p_stream->tinfo) +
                                 __MAX(0, p_heldblock->i_length));
    }



    p_stream->p_held_entry = malloc(sizeof(mp4_fragentry_t));
    if (unlikely(!p_stream->p_held_entry))
        return VLC_ENOMEM;

    p_stream->p_held_entry->p_block = p_currentblock;
    p_stream->p_held_entry->i_run = p_stream->i_current_run;
    p_stream->p_held_entry->p_next = ((void*)0);

    if (mp4mux_track_GetFmt(p_stream->tinfo)->i_cat == VIDEO_ES )
    {
        if (!p_stream->b_hasiframes && (p_currentblock->i_flags & BLOCK_FLAG_TYPE_I))
            p_stream->b_hasiframes = 1;

        if (!mp4mux_track_HasBFrames(p_stream->tinfo) &&
            p_currentblock->i_dts != VLC_TICK_INVALID &&
            p_currentblock->i_pts > p_currentblock->i_dts)
                mp4mux_track_SetHasBFrames(p_stream->tinfo);
    }


    vlc_tick_t i_min_read_duration = mp4mux_track_GetDuration(p_stream->tinfo);
    vlc_tick_t i_min_written_duration = p_stream->i_written_duration;
    for (unsigned int i=0; i<p_sys->i_nb_streams; i++)
    {
        const mp4_stream_t *p_s = p_sys->pp_streams[i];
        if (mp4mux_track_GetFmt(p_stream->tinfo)->i_cat != VIDEO_ES &&
            mp4mux_track_GetFmt(p_stream->tinfo)->i_cat != AUDIO_ES)
            continue;
        if (mp4mux_track_GetDuration(p_s->tinfo) < i_min_read_duration)
            i_min_read_duration = mp4mux_track_GetDuration(p_s->tinfo);

        if (p_s->i_written_duration < i_min_written_duration)
            i_min_written_duration = p_s->i_written_duration;
    }
    p_sys->i_read_duration = i_min_read_duration;
    p_sys->i_written_duration = i_min_written_duration;


    if (p_stream->read.p_first && p_sys->i_read_duration - p_sys->i_written_duration >= FRAGMENT_LENGTH)
        WriteFragments(p_mux, 0);

    return VLC_SUCCESS;
}
