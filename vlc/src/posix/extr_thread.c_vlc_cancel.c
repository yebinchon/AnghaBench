
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ vlc_thread_t ;


 int pthread_cancel (int ) ;

void vlc_cancel(vlc_thread_t th)
{
    pthread_cancel(th.handle);
}
