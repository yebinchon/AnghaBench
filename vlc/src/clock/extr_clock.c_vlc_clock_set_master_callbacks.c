
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int to_system_locked; int set_dejitter; int set_delay; int reset; int update; } ;
typedef TYPE_1__ vlc_clock_t ;


 int vlc_clock_master_reset ;
 int vlc_clock_master_set_dejitter ;
 int vlc_clock_master_set_delay ;
 int vlc_clock_master_to_system_locked ;
 int vlc_clock_master_update ;

__attribute__((used)) static void vlc_clock_set_master_callbacks(vlc_clock_t *clock)
{
    clock->update = vlc_clock_master_update;
    clock->reset = vlc_clock_master_reset;
    clock->set_delay = vlc_clock_master_set_delay;
    clock->set_dejitter = vlc_clock_master_set_dejitter;
    clock->to_system_locked = vlc_clock_master_to_system_locked;
}
