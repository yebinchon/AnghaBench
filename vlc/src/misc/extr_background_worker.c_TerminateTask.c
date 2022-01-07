
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct background_worker {scalar_t__ uncompleted; int lock; } ;
struct background_thread {int * task; struct background_worker* owner; } ;


 int assert (int) ;
 int task_Destroy (struct background_worker*,struct task*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void TerminateTask(struct background_thread *thread, struct task *task)
{
    struct background_worker *worker = thread->owner;
    task_Destroy(worker, task);

    vlc_mutex_lock(&worker->lock);
    thread->task = ((void*)0);
    worker->uncompleted--;
    assert(worker->uncompleted >= 0);
    vlc_mutex_unlock(&worker->lock);
}
