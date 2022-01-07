
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; int pf_send; int pf_del; int pf_add; int p_next; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_7__ {scalar_t__ i_es_num; int * pp_es; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int Add ;
 int Del ;
 int Send ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys;

    p_sys = malloc( sizeof( sout_stream_sys_t ) );

    if( !p_stream->p_next )
    {
        msg_Err( p_stream, "cannot create chain" );
        free( p_sys );
        return VLC_EGENERIC;
    }
    p_sys->pp_es = ((void*)0);
    p_sys->i_es_num = 0;

    p_stream->pf_add = Add;
    p_stream->pf_del = Del;
    p_stream->pf_send = Send;

    p_stream->p_sys = p_sys;

    return VLC_SUCCESS;
}
