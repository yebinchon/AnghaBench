
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* start; int * stream; int * last; int * first; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef TYPE_2__ sout_cycle_t ;


 int assert (int) ;
 int free (TYPE_2__*) ;
 int sout_StreamChainDelete (int *,int *) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    sout_stream_t *stream = (sout_stream_t *)obj;
    sout_stream_sys_t *sys = stream->p_sys;

    assert(sys->first == ((void*)0) && sys->last == ((void*)0));

    if (sys->stream != ((void*)0))
        sout_StreamChainDelete(sys->stream, ((void*)0));

    for (sout_cycle_t *cycle = sys->start, *next; cycle != ((void*)0); cycle = next)
    {
        next = cycle->next;
        free(cycle);
    }

    free(sys);
}
