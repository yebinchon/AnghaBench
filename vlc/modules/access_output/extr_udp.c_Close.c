
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_5__ {int i_handle; scalar_t__ p_buffer; int p_fifo; int thread; } ;
typedef TYPE_2__ sout_access_out_sys_t ;


 int block_FifoRelease (int ) ;
 int block_Release (scalar_t__) ;
 int free (TYPE_2__*) ;
 int net_Close (int ) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    vlc_cancel( p_sys->thread );
    vlc_join( p_sys->thread, ((void*)0) );
    block_FifoRelease( p_sys->p_fifo );

    if( p_sys->p_buffer ) block_Release( p_sys->p_buffer );

    net_Close( p_sys->i_handle );
    free( p_sys );
}
