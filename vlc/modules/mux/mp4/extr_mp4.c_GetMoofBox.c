
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_22__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_28__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_mux_t ;
struct TYPE_29__ {unsigned int i_nb_streams; TYPE_5__** pp_streams; int i_mfhd_sequence; } ;
typedef TYPE_4__ sout_mux_sys_t ;
struct TYPE_26__ {TYPE_6__* p_first; } ;
struct TYPE_30__ {scalar_t__ i_written_duration; int tinfo; scalar_t__ b_hasiframes; int towrite; TYPE_22__ read; } ;
typedef TYPE_5__ mp4_stream_t ;
struct TYPE_31__ {TYPE_2__* p_block; struct TYPE_31__* p_next; } ;
typedef TYPE_6__ mp4_fragentry_t ;
struct TYPE_32__ {TYPE_1__* b; } ;
typedef TYPE_7__ bo_t ;
struct TYPE_33__ {scalar_t__ i_cat; } ;
struct TYPE_27__ {scalar_t__ i_length; scalar_t__ i_buffer; int i_flags; scalar_t__ i_dts; scalar_t__ i_pts; } ;
struct TYPE_25__ {int i_flags; } ;


 scalar_t__ AUDIO_ES ;
 int AddKeyframeEntry (TYPE_5__*,int const,unsigned int,int,scalar_t__) ;
 int BLOCK_FLAG_TYPE_I ;
 int DEQUEUE_ENTRY (TYPE_22__,TYPE_6__*) ;
 int ENQUEUE_ENTRY (int ,TYPE_6__*) ;
 int MP4_TFHD_DFLT_SAMPLE_DURATION ;
 int MP4_TFHD_DFLT_SAMPLE_SIZE ;
 int MP4_TFHD_DURATION_IS_EMPTY ;
 int MP4_TRUN_DATA_OFFSET ;
 int MP4_TRUN_FIRST_FLAGS ;
 int MP4_TRUN_SAMPLE_DURATION ;
 int MP4_TRUN_SAMPLE_SIZE ;
 int MP4_TRUN_SAMPLE_TIME_OFFSET ;
 scalar_t__ VIDEO_ES ;
 scalar_t__ VLC_TICK_INVALID ;
 int bo_add_32be (TYPE_7__*,int) ;
 int bo_add_64be (TYPE_7__*,int) ;
 int bo_free (TYPE_7__*) ;
 int bo_set_32be (TYPE_7__*,size_t,int) ;
 int bo_size (TYPE_7__*) ;
 int box_fix (TYPE_7__*,int) ;
 TYPE_7__* box_full_new (char*,int,int) ;
 int box_gather (TYPE_7__*,TYPE_7__*) ;
 TYPE_7__* box_new (char*) ;
 scalar_t__ mp4mux_track_GetDefaultSampleDuration (int ) ;
 scalar_t__ mp4mux_track_GetDefaultSampleSize (int ) ;
 TYPE_8__* mp4mux_track_GetFmt (int ) ;
 int mp4mux_track_GetID (int ) ;
 int mp4mux_track_GetTimescale (int ) ;
 scalar_t__ mp4mux_track_HasBFrames (int ) ;
 int samples_from_vlc_tick (scalar_t__,int ) ;

__attribute__((used)) static bo_t *GetMoofBox(sout_mux_t *p_mux, size_t *pi_mdat_total_size,
                        vlc_tick_t i_barrier_time, const uint64_t i_write_pos)
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    bo_t *moof, *mfhd;
    size_t i_fixupoffset = 0;

    *pi_mdat_total_size = 0;

    moof = box_new("moof");
    if(!moof)
        return ((void*)0);



    mfhd = box_full_new("mfhd", 0, 0);
    if(!mfhd)
    {
        bo_free(moof);
        return ((void*)0);
    }
    bo_add_32be(mfhd, p_sys->i_mfhd_sequence++);

    box_gather(moof, mfhd);

    for (unsigned int i_trak = 0; i_trak < p_sys->i_nb_streams; i_trak++)
    {
        mp4_stream_t *p_stream = p_sys->pp_streams[i_trak];


        bo_t *traf = box_new("traf");
        if(!traf)
            continue;
        uint32_t i_sample = 0;
        vlc_tick_t i_time = p_stream->i_written_duration;
        bool b_allsamesize = 1;
        bool b_allsamelength = 1;
        if ( p_stream->read.p_first )
        {
            mp4_fragentry_t *p_entry = p_stream->read.p_first->p_next;
            while (p_entry && (b_allsamelength || b_allsamesize))
            {

                b_allsamelength &= ( p_entry->p_block->i_length == p_stream->read.p_first->p_block->i_length );
                b_allsamesize &= ( p_entry->p_block->i_buffer == p_stream->read.p_first->p_block->i_buffer );
                p_entry = p_entry->p_next;
            }
        }

        uint32_t i_tfhd_flags = 0x0;
        if (p_stream->read.p_first)
        {

            if (b_allsamelength &&
                p_stream->read.p_first->p_block->i_length !=
                    mp4mux_track_GetDefaultSampleDuration(p_stream->tinfo) &&
                p_stream->read.p_first->p_block->i_length)
                    i_tfhd_flags |= MP4_TFHD_DFLT_SAMPLE_DURATION;


            if (b_allsamesize &&
                p_stream->read.p_first->p_block->i_buffer !=
                    mp4mux_track_GetDefaultSampleSize(p_stream->tinfo) &&
                p_stream->read.p_first->p_block->i_buffer)
                    i_tfhd_flags |= MP4_TFHD_DFLT_SAMPLE_SIZE;
        }
        else
        {

            i_tfhd_flags |= MP4_TFHD_DURATION_IS_EMPTY;
        }


        bo_t *tfhd = box_full_new("tfhd", 0, i_tfhd_flags);
        if(!tfhd)
        {
            bo_free(traf);
            continue;
        }
        bo_add_32be(tfhd, mp4mux_track_GetID(p_stream->tinfo));


        if (i_tfhd_flags & MP4_TFHD_DFLT_SAMPLE_DURATION)
            bo_add_32be(tfhd, samples_from_vlc_tick(p_stream->read.p_first->p_block->i_length,
                                                    mp4mux_track_GetTimescale(p_stream->tinfo)));


        if (i_tfhd_flags & MP4_TFHD_DFLT_SAMPLE_SIZE)
            bo_add_32be(tfhd, p_stream->read.p_first->p_block->i_buffer);

        box_gather(traf, tfhd);


        bo_t *tfdt = box_full_new("tfdt", 1, 0);
        if(!tfdt)
        {
            bo_free(traf);
            continue;
        }
        bo_add_64be(tfdt, samples_from_vlc_tick(p_stream->i_written_duration,
                                                mp4mux_track_GetTimescale(p_stream->tinfo)) );
        box_gather(traf, tfdt);


        if (p_stream->read.p_first)
        {
            uint32_t i_trun_flags = 0x0;

            if (p_stream->b_hasiframes && !(p_stream->read.p_first->p_block->i_flags & BLOCK_FLAG_TYPE_I))
                i_trun_flags |= MP4_TRUN_FIRST_FLAGS;

            if (!b_allsamelength ||
                ( !(i_tfhd_flags & MP4_TFHD_DFLT_SAMPLE_DURATION) &&
                    mp4mux_track_GetDefaultSampleDuration(p_stream->tinfo) == 0 ))
                i_trun_flags |= MP4_TRUN_SAMPLE_DURATION;

            if (!b_allsamesize ||
                ( !(i_tfhd_flags & MP4_TFHD_DFLT_SAMPLE_SIZE) &&
                  mp4mux_track_GetDefaultSampleSize(p_stream->tinfo) == 0 ))
                i_trun_flags |= MP4_TRUN_SAMPLE_SIZE;

            if (mp4mux_track_HasBFrames(p_stream->tinfo))
                i_trun_flags |= MP4_TRUN_SAMPLE_TIME_OFFSET;

            if (i_fixupoffset == 0)
                i_trun_flags |= MP4_TRUN_DATA_OFFSET;

            bo_t *trun = box_full_new("trun", 0, i_trun_flags);
            if(!trun)
            {
                bo_free(traf);
                continue;
            }


            uint32_t i_entry_count = 0;
            vlc_tick_t i_run_time = p_stream->i_written_duration;
            mp4_fragentry_t *p_entry = p_stream->read.p_first;
            while(p_entry)
            {
                if ( i_barrier_time && i_run_time + p_entry->p_block->i_length > i_barrier_time )
                    break;
                i_entry_count++;
                i_run_time += p_entry->p_block->i_length;
                p_entry = p_entry->p_next;
            }
            bo_add_32be(trun, i_entry_count);

            if (i_trun_flags & MP4_TRUN_DATA_OFFSET)
            {
                i_fixupoffset = bo_size(moof) + bo_size(traf) + bo_size(trun);
                bo_add_32be(trun, 0xdeadbeef);
            }

            if (i_trun_flags & MP4_TRUN_FIRST_FLAGS)
                bo_add_32be(trun, 1<<16);

            while(p_stream->read.p_first && i_entry_count)
            {
                DEQUEUE_ENTRY(p_stream->read, p_entry);

                if (i_trun_flags & MP4_TRUN_SAMPLE_DURATION)
                    bo_add_32be(trun, samples_from_vlc_tick(p_entry->p_block->i_length,
                                                            mp4mux_track_GetTimescale(p_stream->tinfo)));

                if (i_trun_flags & MP4_TRUN_SAMPLE_SIZE)
                    bo_add_32be(trun, p_entry->p_block->i_buffer);

                if (i_trun_flags & MP4_TRUN_SAMPLE_TIME_OFFSET)
                {
                    vlc_tick_t i_diff = 0;
                    if ( p_entry->p_block->i_dts != VLC_TICK_INVALID &&
                         p_entry->p_block->i_pts > p_entry->p_block->i_dts )
                    {
                        i_diff = p_entry->p_block->i_pts - p_entry->p_block->i_dts;
                    }
                    bo_add_32be(trun, samples_from_vlc_tick(i_diff, mp4mux_track_GetTimescale(p_stream->tinfo)));
                }

                *pi_mdat_total_size += p_entry->p_block->i_buffer;

                ENQUEUE_ENTRY(p_stream->towrite, p_entry);
                i_entry_count--;
                i_sample++;


                if (p_stream->b_hasiframes && (p_entry->p_block->i_flags & BLOCK_FLAG_TYPE_I) &&
                    (mp4mux_track_GetFmt(p_stream->tinfo)->i_cat == VIDEO_ES ||
                     mp4mux_track_GetFmt(p_stream->tinfo)->i_cat == AUDIO_ES))
                {
                    AddKeyframeEntry(p_stream, i_write_pos, i_trak, i_sample, i_time);
                }

                i_time += p_entry->p_block->i_length;
            }

            box_gather(traf, trun);
        }

        box_gather(moof, traf);
    }

    if(!moof->b)
    {
        bo_free(moof);
        return ((void*)0);
    }

    box_fix(moof, bo_size(moof));


    if (i_fixupoffset)
    {

        bo_set_32be(moof, i_fixupoffset, bo_size(moof) + 8);
    }


    moof->b->i_flags |= BLOCK_FLAG_TYPE_I;

    return moof;
}
