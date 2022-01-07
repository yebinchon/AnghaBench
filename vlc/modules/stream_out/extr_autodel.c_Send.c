
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_15__ {int p_next; scalar_t__ p_sys; } ;
typedef TYPE_3__ sout_stream_t ;
struct TYPE_16__ {int i_es_num; TYPE_2__** pp_es; } ;
typedef TYPE_4__ sout_stream_sys_t ;
struct TYPE_19__ {int i_id; } ;
struct TYPE_17__ {int b_error; int * id; TYPE_8__ fmt; int i_last; } ;
typedef TYPE_5__ sout_stream_id_sys_t ;
struct TYPE_18__ {int i_dts; } ;
typedef TYPE_6__ block_t ;
struct TYPE_13__ {scalar_t__ i_cat; } ;
struct TYPE_14__ {scalar_t__ i_last; int * id; TYPE_1__ fmt; } ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ VIDEO_ES ;
 int VLC_SUCCESS ;
 int block_ChainRelease (TYPE_6__*) ;
 int msg_Err (TYPE_3__*,char*,int ) ;
 int * sout_StreamIdAdd (int ,TYPE_8__*) ;
 int sout_StreamIdDel (int ,int *) ;
 int sout_StreamIdSend (int ,int *,TYPE_6__*) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *_p_es, block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = (sout_stream_sys_t *)p_stream->p_sys;
    sout_stream_id_sys_t *p_es = (sout_stream_id_sys_t *)_p_es;
    vlc_tick_t i_current = vlc_tick_now();
    int i;

    p_es->i_last = p_buffer->i_dts;
    if ( !p_es->id && !p_es->b_error )
    {
        p_es->id = sout_StreamIdAdd( p_stream->p_next, &p_es->fmt );
        if ( p_es->id == ((void*)0) )
        {
            p_es->b_error = 1;
            msg_Err( p_stream, "couldn't create chain for id %d",
                     p_es->fmt.i_id );
        }
    }

    if ( !p_es->b_error )
        sout_StreamIdSend( p_stream->p_next, p_es->id, p_buffer );
    else
        block_ChainRelease( p_buffer );

    for ( i = 0; i < p_sys->i_es_num; i++ )
    {
        if ( p_sys->pp_es[i]->id != ((void*)0)
              && (p_sys->pp_es[i]->fmt.i_cat == VIDEO_ES
                   || p_sys->pp_es[i]->fmt.i_cat == AUDIO_ES)
              && p_sys->pp_es[i]->i_last < i_current )
        {
            sout_StreamIdDel( p_stream->p_next, p_sys->pp_es[i]->id );
            p_sys->pp_es[i]->id = ((void*)0);
        }
    }

    return VLC_SUCCESS;
}
