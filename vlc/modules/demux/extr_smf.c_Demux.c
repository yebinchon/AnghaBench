
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {scalar_t__ pulse; int tick; int es; int pts; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int* p_buffer; int i_pts; int i_dts; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ ReadEvents (TYPE_1__*,scalar_t__*,int ) ;
 int TICK ;
 scalar_t__ UINT64_MAX ;
 int VLC_DEMUXER_EGENERIC ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 int VLC_ENOMEM ;
 TYPE_3__* block_Alloc (int) ;
 int date_Get (int *) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Demux (demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;


    if (sys->tick <= date_Get (&sys->pts))
    {
        block_t *tick = block_Alloc (1);
        if (unlikely(tick == ((void*)0)))
            return VLC_ENOMEM;

        tick->p_buffer[0] = 0xF9;
        tick->i_dts = tick->i_pts = sys->tick;

        es_out_Send (demux->out, sys->es, tick);
        es_out_SetPCR (demux->out, sys->tick);

        sys->tick += TICK;
        return VLC_DEMUXER_SUCCESS;
    }


    uint64_t pulse = sys->pulse;

    if (ReadEvents (demux, &pulse, demux->out))
        return VLC_DEMUXER_EGENERIC;

    if (pulse == UINT64_MAX)
        return VLC_DEMUXER_EOF;

    sys->pulse = pulse;
    return VLC_DEMUXER_SUCCESS;
}
