
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker {int threads; int nthreads; int lock; } ;
struct background_thread {int node; } ;


 int Thread ;
 int VLC_THREAD_PRIORITY_LOW ;
 struct background_thread* background_thread_Create (struct background_worker*) ;
 int free (struct background_thread*) ;
 scalar_t__ vlc_clone_detach (int *,int ,struct background_thread*,int ) ;
 int vlc_list_append (int *,int *) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static bool SpawnThread(struct background_worker *worker)
{
    vlc_mutex_assert(&worker->lock);

    struct background_thread *thread = background_thread_Create(worker);
    if (!thread)
        return 0;

    if (vlc_clone_detach(((void*)0), Thread, thread, VLC_THREAD_PRIORITY_LOW))
    {
        free(thread);
        return 0;
    }
    worker->nthreads++;
    vlc_list_append(&thread->node, &worker->threads);

    return 1;
}
