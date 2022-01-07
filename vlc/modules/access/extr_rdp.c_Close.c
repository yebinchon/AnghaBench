
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_4__ {int psz_hostname; scalar_t__ p_block; int p_instance; scalar_t__ es; int thread; } ;
typedef TYPE_2__ demux_sys_t ;


 int block_Release (scalar_t__) ;
 int es_out_Del (int ,scalar_t__) ;
 int free (int ) ;
 int freerdp_channels_global_uninit () ;
 int freerdp_disconnect (int ) ;
 int freerdp_free (int ) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    vlc_cancel( p_sys->thread );
    vlc_join( p_sys->thread, ((void*)0) );

    if ( p_sys->es )
        es_out_Del( p_demux->out, p_sys->es );

    freerdp_disconnect( p_sys->p_instance );
    freerdp_free( p_sys->p_instance );




    if ( p_sys->p_block )
        block_Release( p_sys->p_block );

    free( p_sys->psz_hostname );
}
