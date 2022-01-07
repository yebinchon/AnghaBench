
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; } ;
typedef TYPE_1__ vout_chrono_t ;


 int vlc_tick_now () ;

__attribute__((used)) static inline void vout_chrono_Start(vout_chrono_t *chrono)
{
    chrono->start = vlc_tick_now();
}
