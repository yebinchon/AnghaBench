
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {int p_mux; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef int sout_input_t ;


 int sout_MuxFlush (int ,int *) ;

__attribute__((used)) static void Flush( sout_stream_t *p_stream, void *id )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_MuxFlush( p_sys->p_mux, (sout_input_t*)id );
}
