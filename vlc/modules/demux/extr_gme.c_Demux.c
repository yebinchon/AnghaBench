
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int * gme_err_t ;
struct TYPE_10__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_11__ {unsigned int track_id; int title_changed; int pts; int es; int emu; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int i_pts; int i_dts; scalar_t__ p_buffer; } ;
typedef TYPE_3__ block_t ;


 int SAMPLES ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 TYPE_3__* block_Alloc (int) ;
 int block_Release (TYPE_3__*) ;
 int date_Get (int *) ;
 int date_Increment (int *,int) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int * gme_play (int ,int,void*) ;
 int gme_start_track (int ,unsigned int) ;
 scalar_t__ gme_track_count (int ) ;
 scalar_t__ gme_track_ended (int ) ;
 int msg_Dbg (TYPE_1__*,char*,unsigned int) ;
 int msg_Err (TYPE_1__*,char*,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Demux (demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;


    if (gme_track_ended (sys->emu))
    {
        msg_Dbg (demux, "track %u ended", sys->track_id);
        if (++sys->track_id >= (unsigned)gme_track_count (sys->emu))
            return VLC_DEMUXER_EOF;

        sys->title_changed = 1;
        gme_start_track (sys->emu, sys->track_id);
    }


    block_t *block = block_Alloc (2 * 2 * SAMPLES);
    if (unlikely(block == ((void*)0)))
        return VLC_DEMUXER_EOF;

    gme_err_t ret = gme_play (sys->emu, 2 * SAMPLES, (void *)block->p_buffer);
    if (ret != ((void*)0))
    {
        block_Release (block);
        msg_Err (demux, "%s", ret);
        return VLC_DEMUXER_EOF;
    }

    block->i_pts = block->i_dts = date_Get (&sys->pts);
    es_out_SetPCR (demux->out, block->i_pts);
    es_out_Send (demux->out, sys->es, block);
    date_Increment (&sys->pts, SAMPLES);
    return VLC_DEMUXER_SUCCESS;
}
