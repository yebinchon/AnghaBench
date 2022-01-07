
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ encoder_t ;
struct TYPE_5__ {int p_chain; scalar_t__ p_dts_fifo; struct TYPE_5__* p_format; scalar_t__ p_schro; } ;
typedef TYPE_2__ encoder_sys_t ;


 int block_ChainRelease (int ) ;
 int free (TYPE_2__*) ;
 int schro_encoder_free (scalar_t__) ;
 int timestamp_FifoRelease (scalar_t__) ;

__attribute__((used)) static void CloseEncoder( vlc_object_t *p_this )
{
    encoder_t *p_enc = (encoder_t *)p_this;
    encoder_sys_t *p_sys = p_enc->p_sys;


    if( p_sys->p_schro )
        schro_encoder_free( p_sys->p_schro );

    free( p_sys->p_format );

    if( p_sys->p_dts_fifo )
        timestamp_FifoRelease( p_sys->p_dts_fifo );

    block_ChainRelease( p_sys->p_chain );

    free( p_sys );
}
