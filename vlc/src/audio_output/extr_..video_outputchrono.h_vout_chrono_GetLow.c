
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int var; scalar_t__ avg; } ;
typedef TYPE_1__ vout_chrono_t ;
typedef int vlc_tick_t ;


 int __MAX (scalar_t__,int ) ;

__attribute__((used)) static inline vlc_tick_t vout_chrono_GetLow(vout_chrono_t *chrono)
{
    return __MAX(chrono->avg - 2 * chrono->var, 0);
}
