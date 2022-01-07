
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_stream_t ;
struct TYPE_15__ {scalar_t__ (* clock ) (TYPE_5__*) ;scalar_t__ period; int * stream; TYPE_1__* start; TYPE_1__* next; } ;
typedef TYPE_3__ sout_stream_sys_t ;
struct TYPE_16__ {int id; } ;
typedef TYPE_4__ sout_stream_id_sys_t ;
struct TYPE_17__ {struct TYPE_17__* p_next; } ;
typedef TYPE_5__ block_t ;
struct TYPE_13__ {scalar_t__ offset; struct TYPE_13__* next; int chain; } ;


 int AddStream (TYPE_2__*,int ) ;
 int DelStream (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int block_Release (TYPE_5__*) ;
 int sout_StreamIdSend (int *,int ,TYPE_5__*) ;
 scalar_t__ stub1 (TYPE_5__*) ;

__attribute__((used)) static int Send(sout_stream_t *stream, void *_id, block_t *block)
{
    sout_stream_sys_t *sys = stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    for (block_t *next = block->p_next; block != ((void*)0); block = next)
    {
        block->p_next = ((void*)0);


        while (sys->clock(block) >= sys->next->offset)
        {
            DelStream(stream);
            AddStream(stream, sys->next->chain);

            sys->next->offset += sys->period;
            sys->next = sys->next->next;
            if (sys->next == ((void*)0))
                sys->next = sys->start;
        }

        if (sys->stream != ((void*)0))
            sout_StreamIdSend(sys->stream, id->id, block);
        else
            block_Release(block);
    }
    return VLC_SUCCESS;
}
