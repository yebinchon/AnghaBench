
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
struct TYPE_4__ {int finished; int data; void* (* entry ) (int ) ;} ;


 int finish_joinable_thread ;
 void* stub1 (int ) ;
 TYPE_1__* thread ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,TYPE_1__*) ;
 int vlc_sem_post (int *) ;

__attribute__((used)) static void *joinable_thread(void *data)
{
    vlc_thread_t th = data;
    void *ret;

    vlc_cleanup_push(finish_joinable_thread, th);
    thread = th;
    ret = th->entry(th->data);
    vlc_cleanup_pop();
    vlc_sem_post(&th->finished);

    return ret;
}
