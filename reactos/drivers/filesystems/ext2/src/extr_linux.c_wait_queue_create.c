
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __wait_queue {int event; int task_list; void* private; int flags; } ;


 int FALSE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ KeGetCurrentThread () ;
 int KeInitializeEvent (int *,int ,int ) ;
 int SynchronizationEvent ;
 int WQ_FLAG_AUTO_REMOVAL ;
 struct __wait_queue* kmalloc (int,int ) ;
 int memset (struct __wait_queue*,int ,int) ;

struct __wait_queue *
wait_queue_create()
{
    struct __wait_queue * wait = ((void*)0);
    wait = kmalloc(sizeof(struct __wait_queue), GFP_KERNEL);
    if (!wait) {
        return ((void*)0);
    }

    memset(wait, 0, sizeof(struct __wait_queue));
    wait->flags = WQ_FLAG_AUTO_REMOVAL;
    wait->private = (void *)KeGetCurrentThread();
    INIT_LIST_HEAD(&wait->task_list);
    KeInitializeEvent(&(wait->event),
                      SynchronizationEvent,
                      FALSE);

    return wait;
}
