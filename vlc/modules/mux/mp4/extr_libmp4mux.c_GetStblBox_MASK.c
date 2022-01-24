#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {scalar_t__ i_cat; } ;
struct TYPE_10__ {unsigned int i_samples_count; TYPE_3__* samples; TYPE_1__ fmt; int /*<<< orphan*/  i_timescale; scalar_t__ b_hasbframes; } ;
typedef  TYPE_2__ mp4mux_trackinfo_t ;
struct TYPE_11__ {int i_pos; int i_size; scalar_t__ i_pts_dts; scalar_t__ i_length; int i_flags; } ;
typedef  TYPE_3__ mp4mux_sample_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 int BLOCK_FLAG_TYPE_I ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ SPU_ES ; 
 scalar_t__ VIDEO_ES ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bo_t *FUNC14(vlc_object_t *p_obj, mp4mux_trackinfo_t *p_track, bool b_mov, bool b_stco64)
{
    /* sample description */
    bo_t *stsd = FUNC9("stsd", 0, 0);
    if(!stsd)
        return NULL;
    FUNC5(stsd, 1);
    if (p_track->fmt.i_cat == AUDIO_ES)
        FUNC10(stsd, FUNC1(p_obj, p_track, b_mov));
    else if (p_track->fmt.i_cat == VIDEO_ES)
        FUNC10(stsd, FUNC3(p_obj, p_track, b_mov));
    else if (p_track->fmt.i_cat == SPU_ES)
        FUNC10(stsd, FUNC2(p_obj, p_track, b_mov));

    /* chunk offset table */
    bo_t *stco;

    if (b_stco64) {
        /* 64 bits version */
        stco = FUNC9("co64", 0, 0);
    } else {
        /* 32 bits version */
        stco = FUNC9("stco", 0, 0);
    }
    if(!stco)
    {
        FUNC7(stsd);
        return NULL;
    }
    FUNC5(stco, 0);     // entry-count (fixed latter)

    /* sample to chunk table */
    bo_t *stsc = FUNC9("stsc", 0, 0);
    if(!stsc)
    {
        FUNC7(stco);
        FUNC7(stsd);
        return NULL;
    }
    FUNC5(stsc, 0);     // entry-count (fixed latter)

    unsigned i_chunk = 0;
    unsigned i_stsc_last_val = 0, i_stsc_entries = 0;
    for (unsigned i = 0; i < p_track->i_samples_count; i_chunk++) {
        mp4mux_sample_t *entry = p_track->samples;
        int i_first = i;

        if (b_stco64)
            FUNC6(stco, entry[i].i_pos);
        else
            FUNC5(stco, entry[i].i_pos);

        for (; i < p_track->i_samples_count; i++)
            if (i >= p_track->i_samples_count - 1 ||
                    entry[i].i_pos + entry[i].i_size != entry[i+1].i_pos) {
                i++;
                break;
            }

        /* Add entry to the stsc table */
        if (i_stsc_last_val != i - i_first) {
            FUNC5(stsc, 1 + i_chunk);   // first-chunk
            FUNC5(stsc, i - i_first) ;  // samples-per-chunk
            FUNC5(stsc, 1);             // sample-descr-index
            i_stsc_last_val = i - i_first;
            i_stsc_entries++;
        }
    }

    /* Fix stco entry count */
    FUNC8(stco, 12, i_chunk);
    if(p_obj)
        FUNC12(p_obj, "created %d chunks (stco)", i_chunk);

    /* Fix stsc entry count */
    FUNC8(stsc, 12, i_stsc_entries );

    /* add stts */
    bo_t *stts = FUNC9("stts", 0, 0);
    if(!stts)
    {
        FUNC7(stsd);
        FUNC7(stco);
        FUNC7(stsc);
        return NULL;
    }
    FUNC5(stts, 0);     // entry-count (fixed latter)

    vlc_tick_t i_total_mtime = 0;
    int64_t i_total_scaled = 0;
    unsigned i_index = 0;
    for (unsigned i = 0; i < p_track->i_samples_count; i_index++) {
        int     i_first = i;

        int64_t i_scaled = FUNC0(&p_track->samples[i], p_track->i_timescale,
                                                  &i_total_mtime, &i_total_scaled);
        for (unsigned j=i+1; j < p_track->i_samples_count; j++)
        {
            vlc_tick_t i_total_mtime_next = i_total_mtime;
            int64_t i_total_scaled_next = i_total_scaled;
            int64_t i_scalednext = FUNC0(&p_track->samples[j], p_track->i_timescale,
                                                          &i_total_mtime_next, &i_total_scaled_next);
            if( i_scalednext != i_scaled )
                break;

            i_total_mtime = i_total_mtime_next;
            i_total_scaled = i_total_scaled_next;
            i = j;
        }

        FUNC5(stts, ++i - i_first); // sample-count
        FUNC5(stts, i_scaled); // sample-delta
    }
    FUNC8(stts, 12, i_index);

    //msg_Dbg(p_obj, "total sout duration %"PRId64" reconverted from scaled %"PRId64,
    //                i_total_mtime, vlc_tick_from_samples(i_total_scaled, p_track->i_timescale) );

    /* composition time handling */
    bo_t *ctts = NULL;
    if ( p_track->b_hasbframes && (ctts = FUNC9("ctts", 0, 0)) )
    {
        FUNC5(ctts, 0);
        i_index = 0;
        for (unsigned i = 0; i < p_track->i_samples_count; i_index++)
        {
            int     i_first = i;
            vlc_tick_t i_offset = p_track->samples[i].i_pts_dts;

            for (; i < p_track->i_samples_count; ++i)
                if (i == p_track->i_samples_count || p_track->samples[i].i_pts_dts != i_offset)
                    break;

            FUNC5(ctts, i - i_first); // sample-count
            FUNC5(ctts, FUNC13(i_offset, p_track->i_timescale) ); // sample-offset
        }
        FUNC8(ctts, 12, i_index);
    }

    bo_t *stsz = FUNC9("stsz", 0, 0);
    if(!stsz)
    {
        FUNC7(stsd);
        FUNC7(stco);
        FUNC7(stts);
        return NULL;
    }
    int i_size = 0;
    for (unsigned i = 0; i < p_track->i_samples_count; i++)
    {
        if ( i == 0 )
            i_size = p_track->samples[i].i_size;
        else if ( p_track->samples[i].i_size != i_size )
        {
            i_size = 0;
            break;
        }
    }
    FUNC5(stsz, i_size);                         // sample-size
    FUNC5(stsz, p_track->i_samples_count);       // sample-count
    if ( i_size == 0 ) // all samples have different size
    {
        for (unsigned i = 0; i < p_track->i_samples_count; i++)
            FUNC5(stsz, p_track->samples[i].i_size); // sample-size
    }

    /* create stss table */
    bo_t *stss = NULL;
    i_index = 0;
    if ( p_track->fmt.i_cat == VIDEO_ES || p_track->fmt.i_cat == AUDIO_ES )
    {
        vlc_tick_t i_interval = -1;
        for (unsigned i = 0; i < p_track->i_samples_count; i++)
        {
            if ( i_interval != -1 )
            {
                i_interval += p_track->samples[i].i_length + p_track->samples[i].i_pts_dts;
                if ( i_interval < FUNC4(2) )
                    continue;
            }

            if (p_track->samples[i].i_flags & BLOCK_FLAG_TYPE_I) {
                if (stss == NULL) {
                    stss = FUNC9("stss", 0, 0);
                    if(!stss)
                        break;
                    FUNC5(stss, 0); /* fixed later */
                }
                FUNC5(stss, 1 + i);
                i_index++;
                i_interval = 0;
            }
        }
    }

    if (stss)
        FUNC8(stss, 12, i_index);

    /* Now gather all boxes into stbl */
    bo_t *stbl = FUNC11("stbl");
    if(!stbl)
    {
        FUNC7(stsd);
        FUNC7(stco);
        FUNC7(stts);
        FUNC7(stsz);
        FUNC7(stss);
        FUNC7(ctts);
        return NULL;
    }
    FUNC10(stbl, stsd);
    FUNC10(stbl, stts);
    if (stss)
        FUNC10(stbl, stss);
    if (ctts)
        FUNC10(stbl, ctts);
    FUNC10(stbl, stsc);
    FUNC10(stbl, stsz);
    FUNC10(stbl, stco);

    return stbl;
}