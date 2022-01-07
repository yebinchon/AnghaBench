
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_thread {int probe_cancel_wait; } ;


 int free (struct background_thread*) ;
 int vlc_cond_destroy (int *) ;

__attribute__((used)) static void background_thread_Destroy(struct background_thread *thread)
{
    vlc_cond_destroy(&thread->probe_cancel_wait);
    free(thread);
}
