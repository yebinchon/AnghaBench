
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;


 scalar_t__ vlc_tick_now () ;
 int vlc_tick_wait (scalar_t__) ;

void vlc_tick_sleep (vlc_tick_t delay)
{
    vlc_tick_wait (vlc_tick_now () + delay);
}
