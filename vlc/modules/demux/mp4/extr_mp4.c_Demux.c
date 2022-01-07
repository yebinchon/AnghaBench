
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int b_fragmented; } ;
typedef TYPE_2__ demux_sys_t ;


 int DemuxMoov (TYPE_1__*) ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_EOS ;
 int assert (int) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    assert( ! p_sys->b_fragmented );

    int i_status = DemuxMoov( p_demux );

    if( i_status == VLC_DEMUXER_EOS )
        i_status = VLC_DEMUXER_EOF;

    return i_status;
}
