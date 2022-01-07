
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_7__ {scalar_t__ p_ep; } ;
struct TYPE_6__ {scalar_t__ p_sh; } ;
struct TYPE_9__ {int cc; int cc_next; TYPE_2__ ep; TYPE_1__ sh; scalar_t__ p_frame; int packetizer; } ;
typedef TYPE_4__ decoder_sys_t ;


 int block_Release (scalar_t__) ;
 int cc_Exit (int *) ;
 int free (TYPE_4__*) ;
 int packetizer_Clean (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    packetizer_Clean( &p_sys->packetizer );
    if( p_sys->p_frame )
        block_Release( p_sys->p_frame );
    if( p_sys->sh.p_sh )
        block_Release( p_sys->sh.p_sh );
    if( p_sys->ep.p_ep )
        block_Release( p_sys->ep.p_ep );

    cc_Exit( &p_sys->cc_next );
    cc_Exit( &p_sys->cc );

    free( p_sys );
}
