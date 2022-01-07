
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct task {scalar_t__ timeout; int entity; } ;
struct TYPE_2__ {int (* pf_stop ) (int ,void*) ;scalar_t__ (* pf_probe ) (int ,void*) ;scalar_t__ (* pf_start ) (int ,int ,void**) ;} ;
struct background_worker {int owner; TYPE_1__ conf; int lock; } ;
struct background_thread {int cancel; int probe; int probe_cancel_wait; struct task* task; struct background_worker* owner; } ;


 scalar_t__ INT64_MAX ;
 struct task* QueueTake (struct background_worker*,int) ;
 int RemoveThread (struct background_thread*) ;
 int TerminateTask (struct background_thread*,struct task*) ;
 scalar_t__ stub1 (int ,int ,void**) ;
 scalar_t__ stub2 (int ,void*) ;
 int stub3 (int ,void*) ;
 scalar_t__ vlc_cond_timedwait (int *,int *,scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void* Thread( void* data )
{
    struct background_thread *thread = data;
    struct background_worker *worker = thread->owner;

    for (;;)
    {
        vlc_mutex_lock(&worker->lock);
        struct task *task = QueueTake(worker, 5000);
        if (!task)
        {
            vlc_mutex_unlock(&worker->lock);

            break;
        }

        thread->task = task;
        thread->cancel = 0;
        thread->probe = 0;
        vlc_tick_t deadline;
        if (task->timeout > 0)
            deadline = vlc_tick_now() + task->timeout;
        else
            deadline = INT64_MAX;
        vlc_mutex_unlock(&worker->lock);

        void *handle;
        if (worker->conf.pf_start(worker->owner, task->entity, &handle))
        {
            TerminateTask(thread, task);
            continue;
        }

        for (;;)
        {
            vlc_mutex_lock(&worker->lock);
            bool timeout = 0;
            while (!timeout && !thread->probe && !thread->cancel)

                timeout = vlc_cond_timedwait(&thread->probe_cancel_wait,
                                             &worker->lock, deadline) != 0;

            bool cancel = thread->cancel;
            thread->cancel = 0;
            thread->probe = 0;
            vlc_mutex_unlock(&worker->lock);

            if (timeout || cancel
                    || worker->conf.pf_probe(worker->owner, handle))
            {
                worker->conf.pf_stop(worker->owner, handle);
                TerminateTask(thread, task);
                break;
            }
        }
    }

    RemoveThread(thread);

    return ((void*)0);
}
