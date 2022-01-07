
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_7__ {int b_waiting_iframe; scalar_t__ i_dts; scalar_t__ i_pts; int dts; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_8__ {int i_flags; scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_TYPE_I ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ date_Get (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int PacketizeValidate( void *p_private, block_t *p_au )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( unlikely( p_sys->b_waiting_iframe ) )
    {
        if( (p_au->i_flags & BLOCK_FLAG_TYPE_I) == 0 )
        {
            msg_Dbg( p_dec, "waiting on intra frame" );
            return VLC_EGENERIC;
        }
        msg_Dbg( p_dec, "synced on intra frame" );
        p_sys->b_waiting_iframe = 0;
    }



    if( unlikely( p_sys->i_dts == VLC_TICK_INVALID && p_sys->i_pts == VLC_TICK_INVALID &&
        date_Get( &p_sys->dts ) == VLC_TICK_INVALID ))
    {
        msg_Dbg( p_dec, "need a starting pts/dts" );
        return VLC_EGENERIC;
    }



    if( unlikely( p_au->i_dts == VLC_TICK_INVALID ) )
        p_au->i_dts = p_au->i_pts;

    return VLC_SUCCESS;
}
