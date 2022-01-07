
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_9__ {TYPE_3__* p_es; } ;
typedef TYPE_2__ out_sout_stream_sys_t ;
struct TYPE_10__ {TYPE_4__** pp_last; } ;
typedef TYPE_3__ bridged_es_t ;
struct TYPE_11__ {struct TYPE_11__* p_next; } ;
typedef TYPE_4__ block_t ;


 int VLC_SUCCESS ;
 int block_ChainRelease (TYPE_4__*) ;
 int lock ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int SendOut( sout_stream_t *p_stream, void *id, block_t *p_buffer )
{
    out_sout_stream_sys_t *p_sys = (out_sout_stream_sys_t *)p_stream->p_sys;
    bridged_es_t *p_es;

    if ( (out_sout_stream_sys_t *)id != p_sys )
    {
        block_ChainRelease( p_buffer );
        return VLC_SUCCESS;
    }

    vlc_mutex_lock( &lock );

    p_es = p_sys->p_es;
    *p_es->pp_last = p_buffer;
    while ( p_buffer != ((void*)0) )
    {
        p_es->pp_last = &p_buffer->p_next;
        p_buffer = p_buffer->p_next;
    }

    vlc_mutex_unlock( &lock );

    return VLC_SUCCESS;
}
