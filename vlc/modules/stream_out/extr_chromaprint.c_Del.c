
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {void* id; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int Finish (TYPE_1__*) ;
 int free (void*) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *id )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    Finish( p_stream );
    if ( p_sys->id == id )
        p_sys->id = ((void*)0);
    free( id );
}
