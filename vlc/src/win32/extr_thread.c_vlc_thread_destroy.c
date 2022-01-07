
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vlc_thread_t ;
struct TYPE_5__ {int lock; } ;
struct TYPE_6__ {TYPE_1__ wait; } ;


 int DeleteCriticalSection (int *) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void vlc_thread_destroy(vlc_thread_t th)
{
    DeleteCriticalSection(&th->wait.lock);
    free(th);
}
