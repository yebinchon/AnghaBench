
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {scalar_t__ b_frame; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;


 int * OutputFrame (TYPE_1__*) ;

__attribute__((used)) static block_t * PacketizeDrain( void *p_private )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;
    return p_sys->b_frame ? OutputFrame( p_dec ) : ((void*)0);
}
