
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int pf_send; int pf_del; int pf_add; int p_next; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {int id; int i_id; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int Add ;
 int Del ;
 int Send ;
 int TAB_INIT (int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys;

    p_stream->p_sys = p_sys = malloc( sizeof( sout_stream_sys_t ) );
    if( p_sys == ((void*)0) )
        return VLC_EGENERIC;

    if( !p_stream->p_next )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }
    p_stream->pf_add = Add;
    p_stream->pf_del = Del;
    p_stream->pf_send = Send;

    TAB_INIT( p_sys->i_id, p_sys->id );

    return VLC_SUCCESS;
}
