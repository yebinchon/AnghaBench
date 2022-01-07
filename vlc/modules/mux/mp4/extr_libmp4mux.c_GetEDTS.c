
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ i_edits_count; scalar_t__ i_timescale; TYPE_1__* p_edits; } ;
typedef TYPE_2__ mp4mux_trackinfo_t ;
typedef int bo_t ;
struct TYPE_4__ {scalar_t__ i_start_offset; scalar_t__ i_duration; scalar_t__ i_start_time; } ;


 int AddEdit (int *,int,int,int) ;
 int bo_add_32be (int *,scalar_t__) ;
 int bo_free (int *) ;
 int * box_full_new (char*,int,int ) ;
 int box_gather (int *,int *) ;
 int * box_new (char*) ;
 int samples_from_vlc_tick (scalar_t__,scalar_t__) ;

__attribute__((used)) static bo_t *GetEDTS( mp4mux_trackinfo_t *p_track, uint32_t i_movietimescale, bool b_64_ext)
{
    if(p_track->i_edits_count == 0)
        return ((void*)0);

    bo_t *edts = box_new("edts");
    bo_t *elst = box_full_new("elst", b_64_ext ? 1 : 0, 0);
    if(!elst || !edts)
    {
        bo_free(elst);
        bo_free(edts);
        return ((void*)0);
    }

    uint32_t i_total_edits = p_track->i_edits_count;
    for(unsigned i=0; i<p_track->i_edits_count; i++)
    {

        if(p_track->p_edits[i].i_start_offset != 0)
            i_total_edits++;
    }

    bo_add_32be(elst, i_total_edits);

    for(unsigned i=0; i<p_track->i_edits_count; i++)
    {
        if(p_track->p_edits[i].i_start_offset != 0)
        {
            AddEdit(elst,
                    samples_from_vlc_tick(p_track->p_edits[i].i_start_offset, i_movietimescale),
                    -1,
                    b_64_ext);
        }


        AddEdit(elst,
                samples_from_vlc_tick(p_track->p_edits[i].i_duration, i_movietimescale),
                samples_from_vlc_tick(p_track->p_edits[i].i_start_time, p_track->i_timescale),
                b_64_ext);
    }

    box_gather(edts, elst);
    return edts;
}
