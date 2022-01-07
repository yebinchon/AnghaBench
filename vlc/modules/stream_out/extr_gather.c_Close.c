
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int p_next; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_8__ {int i_id; struct TYPE_8__** id; int fmt; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef TYPE_2__ sout_stream_id_sys_t ;


 int TAB_CLEAN (int,TYPE_2__**) ;
 int es_format_Clean (int *) ;
 int free (TYPE_2__*) ;
 int sout_StreamIdDel (int ,TYPE_2__**) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    int i;

    for( i = 0; i < p_sys->i_id; i++ )
    {
        sout_stream_id_sys_t *id = p_sys->id[i];

        sout_StreamIdDel( p_stream->p_next, id->id );
        es_format_Clean( &id->fmt );
        free( id );
    }
    TAB_CLEAN( p_sys->i_id, p_sys->id );

    free( p_sys );
}
