
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_next; scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {void* id; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int sout_StreamIdDel (int ,void*) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *id )
{
    sout_stream_sys_t *p_sys = (sout_stream_sys_t *)p_stream->p_sys;

    if ( id == p_sys->id )
        p_sys->id = ((void*)0);

    sout_StreamIdDel( p_stream->p_next, id );
}
