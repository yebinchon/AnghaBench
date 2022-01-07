
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int pp_jack_port_table; int pp_jack_buffer; int pp_jack_port_input; scalar_t__ p_jack_ringbuffer; scalar_t__ p_jack_client; scalar_t__ p_block_audio; } ;
typedef TYPE_2__ demux_sys_t ;


 int block_Release (scalar_t__) ;
 int free (int ) ;
 int jack_client_close (scalar_t__) ;
 int jack_ringbuffer_free (scalar_t__) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = ( demux_t* )p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    msg_Dbg( p_demux,"Module unloaded" );
    if( p_sys->p_block_audio ) block_Release( p_sys->p_block_audio );
    if( p_sys->p_jack_client ) jack_client_close( p_sys->p_jack_client );
    if( p_sys->p_jack_ringbuffer ) jack_ringbuffer_free( p_sys->p_jack_ringbuffer );
    free( p_sys->pp_jack_port_input );
    free( p_sys->pp_jack_buffer );
    free( p_sys->pp_jack_port_table );
}
