
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_9__ {int b_slice; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_10__ {int i_flags; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_DROP ;
 TYPE_3__* OutputPicture (TYPE_1__*) ;
 int block_Release (TYPE_3__*) ;

__attribute__((used)) static block_t * PacketizeDrain( void *p_private )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( !p_sys->b_slice )
        return ((void*)0);

    block_t *p_out = OutputPicture( p_dec );
    if( p_out && (p_out->i_flags & BLOCK_FLAG_DROP) )
    {
        block_Release( p_out );
        p_out = ((void*)0);
    }

    return p_out;
}
