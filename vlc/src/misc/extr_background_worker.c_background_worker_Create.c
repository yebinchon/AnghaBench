
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker_config {int dummy; } ;
struct background_worker {int closing; int nothreads_wait; int queue_wait; int queue; int threads; scalar_t__ nthreads; scalar_t__ uncompleted; int lock; void* owner; struct background_worker_config conf; } ;


 struct background_worker* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_cond_init (int *) ;
 int vlc_list_init (int *) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static struct background_worker *background_worker_Create(void *owner,
                                         struct background_worker_config *conf)
{
    struct background_worker* worker = malloc(sizeof(*worker));
    if (unlikely(!worker))
        return ((void*)0);

    worker->conf = *conf;
    worker->owner = owner;

    vlc_mutex_init(&worker->lock);
    worker->uncompleted = 0;
    worker->nthreads = 0;
    vlc_list_init(&worker->threads);
    vlc_list_init(&worker->queue);
    vlc_cond_init(&worker->queue_wait);
    vlc_cond_init(&worker->nothreads_wait);
    worker->closing = 0;
    return worker;
}
