
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_8__ {TYPE_3__* elem; } ;
typedef TYPE_4__ fire_readystatechange_task_t ;
struct TYPE_6__ {int nsnode; int doc; } ;
struct TYPE_5__ {TYPE_2__ node; } ;
struct TYPE_7__ {TYPE_1__ element; scalar_t__ pending_readystatechange_event; } ;


 int EVENTID_READYSTATECHANGE ;
 scalar_t__ FALSE ;
 int fire_event (int ,int ,scalar_t__,int ,int *,int *) ;

__attribute__((used)) static void fire_readystatechange_proc(task_t *_task)
{
    fire_readystatechange_task_t *task = (fire_readystatechange_task_t*)_task;

    if(!task->elem->pending_readystatechange_event)
        return;

    task->elem->pending_readystatechange_event = FALSE;
    fire_event(task->elem->element.node.doc, EVENTID_READYSTATECHANGE, FALSE, task->elem->element.node.nsnode, ((void*)0), ((void*)0));
}
