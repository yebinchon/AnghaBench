
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_sys; int pf_send; int pf_del; int p_next; } ;
typedef TYPE_1__ sout_stream_t ;
typedef int sout_stream_sys_t ;


 int Del ;
 int Send ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * malloc (int) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int OpenCommon( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys;

    if( !p_stream->p_next )
    {
        msg_Err( p_stream, "cannot create chain" );
        return VLC_EGENERIC;
    }

    p_sys = malloc( sizeof( sout_stream_sys_t ) );
    if( unlikely( !p_sys ) )
        return VLC_ENOMEM;

    p_stream->pf_del = Del;
    p_stream->pf_send = Send;

    p_stream->p_sys = p_sys;

    return VLC_SUCCESS;
}
