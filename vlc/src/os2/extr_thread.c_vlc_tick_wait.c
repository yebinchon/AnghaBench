
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;


 scalar_t__ unlikely (int) ;
 int vlc_Sleep (scalar_t__) ;
 int vlc_testcancel () ;
 scalar_t__ vlc_tick_now () ;

void vlc_tick_wait (vlc_tick_t deadline)
{
    vlc_tick_t delay;

    vlc_testcancel();
    while ((delay = (deadline - vlc_tick_now())) > 0)
    {
        delay /= 1000;
        if (unlikely(delay > 0x7fffffff))
            delay = 0x7fffffff;
        vlc_Sleep (delay);
        vlc_testcancel();
    }
}
