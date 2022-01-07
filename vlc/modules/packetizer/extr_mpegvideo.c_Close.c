
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int packetizer; scalar_t__ p_frame; scalar_t__ p_ext; scalar_t__ p_seq; } ;
typedef TYPE_2__ decoder_sys_t ;


 int block_ChainRelease (scalar_t__) ;
 int block_Release (scalar_t__) ;
 int free (TYPE_2__*) ;
 int packetizer_Clean (int *) ;
 int var_Destroy (TYPE_1__*,char*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->p_seq )
    {
        block_Release( p_sys->p_seq );
    }
    if( p_sys->p_ext )
    {
        block_Release( p_sys->p_ext );
    }
    if( p_sys->p_frame )
    {
        block_ChainRelease( p_sys->p_frame );
    }
    packetizer_Clean( &p_sys->packetizer );

    var_Destroy( p_dec, "packetizer-mpegvideo-sync-iframe" );

    free( p_sys );
}
