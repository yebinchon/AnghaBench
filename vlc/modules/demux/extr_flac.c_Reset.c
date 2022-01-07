
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_current_block; int p_packetizer; int i_pts; } ;
typedef TYPE_1__ demux_sys_t ;


 int FlushPacketizer (int ) ;
 int VLC_TICK_INVALID ;
 int block_Release (int *) ;

__attribute__((used)) static void Reset( demux_sys_t *p_sys )
{
    p_sys->i_pts = VLC_TICK_INVALID;

    FlushPacketizer( p_sys->p_packetizer );
    if( p_sys->p_current_block )
    {
        block_Release( p_sys->p_current_block );
        p_sys->p_current_block = ((void*)0);
    }
}
