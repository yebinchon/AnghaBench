
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker {int lock; int queue_wait; } ;


 int free (struct background_worker*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void background_worker_Destroy(struct background_worker *worker)
{
    vlc_cond_destroy(&worker->queue_wait);
    vlc_mutex_destroy(&worker->lock);
    free(worker);
}
