
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_5__ {int cbs_data; TYPE_1__* cbs; } ;
typedef TYPE_2__ vlc_clock_t ;
struct TYPE_4__ {int (* on_update ) (int ,int ,double,unsigned int,unsigned int,int ) ;} ;


 int stub1 (int ,int ,double,unsigned int,unsigned int,int ) ;

__attribute__((used)) static inline void vlc_clock_on_update(vlc_clock_t *clock,
                                       vlc_tick_t system_now,
                                       vlc_tick_t ts, double rate,
                                       unsigned frame_rate,
                                       unsigned frame_rate_base)
{
    if (clock->cbs)
        clock->cbs->on_update(system_now, ts, rate, frame_rate, frame_rate_base,
                              clock->cbs_data);
}
