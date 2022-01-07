
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int p_blocks; } ;
struct TYPE_10__ {TYPE_1__ queue; int * p_skel; int * idx; int fmt; int fmt_old; struct TYPE_10__* p_headers; int os; scalar_t__ p_es; } ;
typedef TYPE_2__ logical_stream_t ;
struct TYPE_11__ {int out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_12__ {TYPE_2__* p_skelstream; } ;
typedef TYPE_4__ demux_sys_t ;


 int Ogg_CleanSpecificData (TYPE_2__*) ;
 int Ogg_FreeSkeleton (int *) ;
 int block_ChainRelease (int ) ;
 int es_format_Clean (int *) ;
 int es_out_Del (int ,scalar_t__) ;
 int free (TYPE_2__*) ;
 int ogg_stream_clear (int *) ;
 int oggseek_index_entries_free (int *) ;

__attribute__((used)) static void Ogg_LogicalStreamDelete( demux_t *p_demux, logical_stream_t *p_stream )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_stream->p_es )
        es_out_Del( p_demux->out, p_stream->p_es );

    ogg_stream_clear( &p_stream->os );
    free( p_stream->p_headers );

    Ogg_CleanSpecificData( p_stream );

    es_format_Clean( &p_stream->fmt_old );
    es_format_Clean( &p_stream->fmt );

    if ( p_stream->idx != ((void*)0))
    {
        oggseek_index_entries_free( p_stream->idx );
    }

    Ogg_FreeSkeleton( p_stream->p_skel );
    p_stream->p_skel = ((void*)0);
    if( p_sys->p_skelstream == p_stream )
        p_sys->p_skelstream = ((void*)0);


    block_ChainRelease( p_stream->queue.p_blocks );

    free( p_stream );
}
