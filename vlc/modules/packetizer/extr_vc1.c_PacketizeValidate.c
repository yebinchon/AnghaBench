
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int dts; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int VLC_UNUSED (int *) ;
 scalar_t__ date_Get (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static int PacketizeValidate( void *p_private, block_t *p_au )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( date_Get( &p_sys->dts ) == VLC_TICK_INVALID )
    {
        msg_Dbg( p_dec, "need a starting pts/dts" );
        return VLC_EGENERIC;
    }
    VLC_UNUSED(p_au);
    return VLC_SUCCESS;
}
