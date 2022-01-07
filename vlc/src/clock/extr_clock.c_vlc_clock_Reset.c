
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* reset ) (TYPE_1__*) ;} ;
typedef TYPE_1__ vlc_clock_t ;


 int stub1 (TYPE_1__*) ;

void vlc_clock_Reset(vlc_clock_t *clock)
{
    clock->reset(clock);
}
