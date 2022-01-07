
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ stime_t ;
struct TYPE_11__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_12__ {int b_pcr_audio; int p_audio; TYPE_3__* p_pes; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_13__ {unsigned int i_buffer; unsigned int p_buffer; scalar_t__ i_pts; void* i_dts; } ;
typedef TYPE_3__ block_t ;


 void* FROM_SCALE (scalar_t__) ;
 scalar_t__ GetPESTimestamp (int*) ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_ChainExtract (TYPE_3__*,int*,int) ;
 TYPE_3__* block_ChainGather (TYPE_3__*) ;
 int block_ChainRelease (TYPE_3__*) ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,scalar_t__) ;
 int msg_Warn (TYPE_1__*,char*,int,int,int,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ParsePES( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_pes = p_sys->p_pes;
    uint8_t hdr[30];

    unsigned i_skip;
    stime_t i_dts = -1;
    stime_t i_pts = -1;

    p_sys->p_pes = ((void*)0);


    block_ChainExtract( p_pes, hdr, 30 );


    if( hdr[0] != 0 || hdr[1] != 0 || hdr[2] != 1 )
    {
        msg_Warn( p_demux, "invalid hdr [0x%2.2x:%2.2x:%2.2x:%2.2x]",
                  hdr[0], hdr[1],hdr[2],hdr[3] );
        block_ChainRelease( p_pes );
        return;
    }




    i_skip = hdr[8] + 9;
    if( hdr[7]&0x80 )
    {
        i_pts = GetPESTimestamp( &hdr[9] );

        if( hdr[7]&0x40 )
        {
             i_dts = GetPESTimestamp( &hdr[14] );
        }
    }

    p_pes = block_ChainGather( p_pes );
    if( unlikely(p_pes == ((void*)0)) )
        return;
    if( p_pes->i_buffer <= i_skip )
    {
        block_ChainRelease( p_pes );
        return;
    }

    p_pes->i_buffer -= i_skip;
    p_pes->p_buffer += i_skip;

    if( i_dts >= 0 )
        p_pes->i_dts = FROM_SCALE(i_dts);
    if( i_pts >= 0 )
        p_pes->i_pts = FROM_SCALE(i_pts);


    if( p_pes->i_pts != VLC_TICK_INVALID )
    {
        es_out_SetPCR( p_demux->out, p_pes->i_pts);
        p_sys->b_pcr_audio = 1;
    }
    es_out_Send( p_demux->out, p_sys->p_audio, p_pes );
}
