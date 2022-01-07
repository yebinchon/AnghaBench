
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_next; scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_8__ {int pp_es; int i_es_num; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_9__ {int fmt; int * id; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;


 int TAB_REMOVE (int ,int ,TYPE_3__*) ;
 int es_format_Clean (int *) ;
 int free (TYPE_3__*) ;
 int sout_StreamIdDel (int ,int *) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *_p_es )
{
    sout_stream_sys_t *p_sys = (sout_stream_sys_t *)p_stream->p_sys;
    sout_stream_id_sys_t *p_es = (sout_stream_id_sys_t *)_p_es;

    if( p_es->id != ((void*)0) )
        sout_StreamIdDel( p_stream->p_next, p_es->id );

    TAB_REMOVE( p_sys->i_es_num, p_sys->pp_es, p_es );
    es_format_Clean( &p_es->fmt );
    free( p_es );
}
