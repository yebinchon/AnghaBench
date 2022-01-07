
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_9__ {scalar_t__ i_id; int b_drop; scalar_t__ p_out; int id; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_10__ {int fmt; scalar_t__ id; scalar_t__ p_first; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;


 int OutputStart (TYPE_1__*) ;
 int TAB_REMOVE (scalar_t__,int ,TYPE_3__*) ;
 int assert (int) ;
 int block_ChainRelease (scalar_t__) ;
 int es_format_Clean (int *) ;
 int free (TYPE_3__*) ;
 int sout_StreamIdDel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *_id )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    if( !p_sys->p_out )
        OutputStart( p_stream );

    if( id->p_first )
        block_ChainRelease( id->p_first );

    assert( !id->id || p_sys->p_out );
    if( id->id )
        sout_StreamIdDel( p_sys->p_out, id->id );

    es_format_Clean( &id->fmt );

    TAB_REMOVE( p_sys->i_id, p_sys->id, id );

    if( p_sys->i_id <= 0 )
    {
        if( !p_sys->p_out )
            p_sys->b_drop = 0;
    }

    free( id );
}
