
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {int es; int fd; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_8__ {int i_pts; int i_dts; } ;
typedef TYPE_3__ block_t ;


 TYPE_3__* block_File (int ,int) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int vlc_tick_now () ;

__attribute__((used)) static void DemuxFile (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;


    block_t *block = block_File(sys->fd, 1);
    if (block == ((void*)0))
        return;
    block->i_pts = block->i_dts = vlc_tick_now ();


    es_out_SetPCR(demux->out, block->i_pts);
    es_out_Send (demux->out, sys->es, block);
}
