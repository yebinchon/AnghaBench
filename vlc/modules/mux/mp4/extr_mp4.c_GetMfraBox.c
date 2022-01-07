
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_7__ {unsigned int i_nb_streams; TYPE_3__** pp_streams; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_8__ {int i_indexentries; TYPE_4__* p_indexentries; int tinfo; } ;
typedef TYPE_3__ mp4_stream_t ;
struct TYPE_9__ {int i_time; int i_moofoffset; int i_sample; int i_trun; int i_traf; } ;
typedef TYPE_4__ mp4_fragindex_t ;
typedef int bo_t ;


 int assert (int) ;
 int bo_add_32be (int *,int) ;
 int bo_add_8 (int *,int ) ;
 int bo_free (int *) ;
 int * box_full_new (char*,int ,int) ;
 int box_gather (int *,int *) ;
 int * box_new (char*) ;
 int mp4mux_track_GetID (int ) ;

__attribute__((used)) static bo_t *GetMfraBox(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = (sout_mux_sys_t*) p_mux->p_sys;
    bo_t *mfra = ((void*)0);
    for (unsigned int i = 0; i < p_sys->i_nb_streams; i++)
    {
        mp4_stream_t *p_stream = p_sys->pp_streams[i];
        if (p_stream->i_indexentries)
        {
            bo_t *tfra = box_full_new("tfra", 0, 0x0);
            if (!tfra) continue;
            bo_add_32be(tfra, mp4mux_track_GetID(p_stream->tinfo));
            bo_add_32be(tfra, 0x3);
            bo_add_32be(tfra, p_stream->i_indexentries);
            for(uint32_t i_index=0; i_index<p_stream->i_indexentries; i_index++)
            {
                const mp4_fragindex_t *p_indexentry = &p_stream->p_indexentries[i_index];
                bo_add_32be(tfra, p_indexentry->i_time);
                bo_add_32be(tfra, p_indexentry->i_moofoffset);
                assert(sizeof(p_indexentry->i_traf)==1);
                assert(sizeof(p_indexentry->i_trun)==1);
                assert(sizeof(p_indexentry->i_sample)==4);
                bo_add_8(tfra, p_indexentry->i_traf);
                bo_add_8(tfra, p_indexentry->i_trun);
                bo_add_32be(tfra, p_indexentry->i_sample);
            }

            if (!mfra && !(mfra = box_new("mfra")))
            {
                bo_free(tfra);
                return ((void*)0);
            }

            box_gather(mfra,tfra);
        }
    }
    return mfra;
}
