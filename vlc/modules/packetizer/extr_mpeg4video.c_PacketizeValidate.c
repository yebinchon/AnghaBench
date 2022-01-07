
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_7__ {scalar_t__ i_interpolated_pts; scalar_t__ i_interpolated_dts; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_8__ {scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_3__ block_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static int PacketizeValidate( void *p_private, block_t *p_au )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;



    if( p_sys->i_interpolated_pts == VLC_TICK_INVALID &&
        p_sys->i_interpolated_dts == VLC_TICK_INVALID )
    {
        msg_Dbg( p_dec, "need a starting pts/dts" );
        return VLC_EGENERIC;
    }



    if( p_au->i_dts == VLC_TICK_INVALID )
        p_au->i_dts = p_au->i_pts;
    return VLC_SUCCESS;
}
