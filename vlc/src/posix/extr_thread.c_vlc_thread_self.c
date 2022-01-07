
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ vlc_thread_t ;


 int pthread_self () ;

vlc_thread_t vlc_thread_self (void)
{
    vlc_thread_t thread = { pthread_self() };
    return thread;
}
