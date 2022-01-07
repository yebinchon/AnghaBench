
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker {int closing; int lock; int nothreads_wait; scalar_t__ nthreads; int queue_wait; } ;


 int BackgroundWorkerCancelLocked (struct background_worker*,int *) ;
 int background_worker_Destroy (struct background_worker*) ;
 int vlc_cond_broadcast (int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void background_worker_Delete( struct background_worker* worker )
{
    vlc_mutex_lock(&worker->lock);

    worker->closing = 1;
    BackgroundWorkerCancelLocked(worker, ((void*)0));

    vlc_cond_broadcast(&worker->queue_wait);

    while (worker->nthreads)
        vlc_cond_wait(&worker->nothreads_wait, &worker->lock);

    vlc_mutex_unlock(&worker->lock);


    background_worker_Destroy(worker);
}
