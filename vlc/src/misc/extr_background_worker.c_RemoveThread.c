
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker {scalar_t__ nthreads; int lock; int nothreads_wait; } ;
struct background_thread {int node; struct background_worker* owner; } ;


 int assert (int) ;
 int background_thread_Destroy (struct background_thread*) ;
 int vlc_cond_signal (int *) ;
 int vlc_list_remove (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void RemoveThread(struct background_thread *thread)
{
    struct background_worker *worker = thread->owner;

    vlc_mutex_lock(&worker->lock);

    vlc_list_remove(&thread->node);
    worker->nthreads--;
    assert(worker->nthreads >= 0);
    if (!worker->nthreads)
        vlc_cond_signal(&worker->nothreads_wait);

    vlc_mutex_unlock(&worker->lock);

    background_thread_Destroy(thread);
}
