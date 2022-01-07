
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {int * stream; TYPE_3__* first; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_7__ {int * id; struct TYPE_7__* next; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;


 int sout_StreamChainDelete (int *,int *) ;
 int sout_StreamIdDel (int *,int *) ;

__attribute__((used)) static void DelStream(sout_stream_t *stream)
{
    sout_stream_sys_t *sys = stream->p_sys;

    if (sys->stream == ((void*)0))
        return;

    for (sout_stream_id_sys_t *id = sys->first; id != ((void*)0); id = id->next)
        if (id->id != ((void*)0))
            sout_StreamIdDel(sys->stream, id->id);

    sout_StreamChainDelete(sys->stream, ((void*)0));
    sys->stream = ((void*)0);
}
