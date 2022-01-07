
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {int b_inited; TYPE_3__* p_es; } ;
typedef TYPE_2__ out_sout_stream_sys_t ;
struct TYPE_7__ {int b_empty; int b_changed; int * p_block; } ;
typedef TYPE_3__ bridged_es_t ;


 int VLC_UNUSED (void*) ;
 int block_ChainRelease (int *) ;
 int lock ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void DelOut( sout_stream_t *p_stream, void *id )
{
    VLC_UNUSED(id);
    out_sout_stream_sys_t *p_sys = (out_sout_stream_sys_t *)p_stream->p_sys;
    bridged_es_t *p_es;

    if ( !p_sys->b_inited )
        return;

    vlc_mutex_lock( &lock );

    p_es = p_sys->p_es;

    p_es->b_empty = 1;
    block_ChainRelease( p_es->p_block );
    p_es->p_block = ((void*)0);

    p_es->b_changed = 1;
    vlc_mutex_unlock( &lock );

    p_sys->b_inited = 0;
}
