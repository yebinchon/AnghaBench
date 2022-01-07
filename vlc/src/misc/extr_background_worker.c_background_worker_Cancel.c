
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker {int lock; } ;


 int BackgroundWorkerCancelLocked (struct background_worker*,void*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void background_worker_Cancel( struct background_worker* worker, void* id )
{
    vlc_mutex_lock(&worker->lock);
    BackgroundWorkerCancelLocked(worker, id);
    vlc_mutex_unlock(&worker->lock);
}
