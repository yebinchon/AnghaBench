
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct vlc_thread {TYPE_1__ wait; } ;


 int free (struct vlc_thread*) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void clean_detached_thread(void *data)
{
    struct vlc_thread *th = data;


    vlc_mutex_destroy(&th->wait.lock);
    free(th);
}
