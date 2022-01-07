
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* preparser; int done; int state; } ;
typedef TYPE_2__ input_preparser_task_t ;
typedef int input_item_t ;
struct TYPE_3__ {int worker; } ;


 int VLC_UNUSED (int *) ;
 int atomic_store (int *,int) ;
 int background_worker_RequestProbe (int ) ;

__attribute__((used)) static void OnParserEnded(input_item_t *item, int status, void *task_)
{
    VLC_UNUSED(item);
    input_preparser_task_t* task = task_;

    atomic_store( &task->state, status );
    atomic_store( &task->done, 1 );
    background_worker_RequestProbe( task->preparser->worker );
}
