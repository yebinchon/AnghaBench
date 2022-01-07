
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
struct TYPE_2__ {int finished; } ;


 int vlc_sem_post (int *) ;

__attribute__((used)) static void finish_joinable_thread(void *data)
{
    vlc_thread_t th = data;

    vlc_sem_post(&th->finished);
}
