
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {int (* set_dejitter ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ vlc_clock_t ;


 int stub1 (TYPE_1__*,int ) ;

void vlc_clock_SetDejitter(vlc_clock_t *clock, vlc_tick_t delay)
{
    clock->set_dejitter(clock, delay);
}
