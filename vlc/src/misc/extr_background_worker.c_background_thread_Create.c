
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_worker {int dummy; } ;
struct background_thread {int probe; int cancel; struct background_worker* owner; int * task; int probe_cancel_wait; } ;


 struct background_thread* malloc (int) ;
 int vlc_cond_init (int *) ;

__attribute__((used)) static struct background_thread *
background_thread_Create(struct background_worker *owner)
{
    struct background_thread *thread = malloc(sizeof(*thread));
    if (!thread)
        return ((void*)0);

    vlc_cond_init(&thread->probe_cancel_wait);
    thread->probe = 0;
    thread->cancel = 0;
    thread->task = ((void*)0);
    thread->owner = owner;
    return thread;
}
