
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int killed; int killable; } ;


 int atomic_load (int *) ;
 int pthread_exit (int *) ;
 TYPE_1__* thread ;

void vlc_testcancel (void)
{
    if (!thread)
        return;
    if (!thread->killable)
        return;
    if (!atomic_load(&thread->killed))
        return;

    pthread_exit(((void*)0));
}
