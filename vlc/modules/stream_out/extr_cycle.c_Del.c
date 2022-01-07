
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_stream_t ;
struct TYPE_11__ {int * stream; TYPE_2__* last; TYPE_1__* first; } ;
typedef TYPE_4__ sout_stream_sys_t ;
struct TYPE_12__ {int fmt; int id; TYPE_2__* prev; TYPE_1__* next; } ;
typedef TYPE_5__ sout_stream_id_sys_t ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_8__ {TYPE_2__* prev; } ;


 int es_format_Clean (int *) ;
 int free (TYPE_5__*) ;
 int sout_StreamIdDel (int *,int ) ;

__attribute__((used)) static void Del(sout_stream_t *stream, void *_id)
{
    sout_stream_sys_t *sys = stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    if (id->prev != ((void*)0))
        id->prev->next = id->next;
    else
        sys->first = id->next;

    if (id->next != ((void*)0))
        id->next->prev = id->prev;
    else
        sys->last = id->prev;

    if (sys->stream != ((void*)0))
        sout_StreamIdDel(sys->stream, id->id);

    es_format_Clean(&id->fmt);
    free(id);
}
