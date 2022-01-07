
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_5__ {int * first; int ** last; } ;
struct TYPE_6__ {int lock; TYPE_1__ spu; } ;
struct TYPE_7__ {TYPE_2__ fifo; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static subpicture_t *transcode_dequeue_all_subs( sout_stream_id_sys_t *id )
{
    vlc_mutex_lock(&id->fifo.lock);
    subpicture_t *p_subpics = id->fifo.spu.first;
    id->fifo.spu.first = ((void*)0);
    id->fifo.spu.last = &id->fifo.spu.first;
    vlc_mutex_unlock(&id->fifo.lock);

    return p_subpics;
}
