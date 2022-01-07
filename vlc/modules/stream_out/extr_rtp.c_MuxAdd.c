
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {int * p_mux; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef void sout_stream_id_sys_t ;
typedef int sout_mux_t ;
typedef int sout_input_t ;
typedef int es_format_t ;


 int assert (int ) ;
 int msg_Err (TYPE_1__*,char*) ;
 int * sout_MuxAddStream (int *,int const*) ;

__attribute__((used)) static void *MuxAdd( sout_stream_t *p_stream, const es_format_t *p_fmt )
{
    sout_input_t *p_input;
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_mux_t *p_mux = p_sys->p_mux;
    assert( p_mux != ((void*)0) );

    p_input = sout_MuxAddStream( p_mux, p_fmt );
    if( p_input == ((void*)0) )
    {
        msg_Err( p_stream, "cannot add this stream to the muxer" );
        return ((void*)0);
    }

    return (sout_stream_id_sys_t *)p_input;
}
