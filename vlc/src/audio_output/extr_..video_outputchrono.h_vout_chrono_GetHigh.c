
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int var; scalar_t__ avg; } ;
typedef TYPE_1__ vout_chrono_t ;
typedef scalar_t__ vlc_tick_t ;



__attribute__((used)) static inline vlc_tick_t vout_chrono_GetHigh(vout_chrono_t *chrono)
{
    return chrono->avg + 2 * chrono->var;
}
