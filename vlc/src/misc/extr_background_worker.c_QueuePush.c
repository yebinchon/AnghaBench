
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int node; } ;
struct background_worker {int queue_wait; int queue; int lock; } ;


 int vlc_cond_signal (int *) ;
 int vlc_list_append (int *,int *) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static void QueuePush(struct background_worker *worker, struct task *task)
{
    vlc_mutex_assert(&worker->lock);
    vlc_list_append(&task->node, &worker->queue);
    vlc_cond_signal(&worker->queue_wait);
}
