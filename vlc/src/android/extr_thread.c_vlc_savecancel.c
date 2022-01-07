
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int killable; } ;


 TYPE_1__* thread ;

int vlc_savecancel (void)
{
    if (!thread)
        return 1;

    int oldstate = thread->killable;
    thread->killable = 0;
    return oldstate;
}
