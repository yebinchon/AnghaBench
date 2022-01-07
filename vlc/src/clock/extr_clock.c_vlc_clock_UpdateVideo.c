
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {int (* update ) (TYPE_1__*,int ,int ,double,unsigned int,unsigned int) ;} ;
typedef TYPE_1__ vlc_clock_t ;


 int stub1 (TYPE_1__*,int ,int ,double,unsigned int,unsigned int) ;

vlc_tick_t vlc_clock_UpdateVideo(vlc_clock_t *clock, vlc_tick_t system_now,
                                 vlc_tick_t ts, double rate,
                                 unsigned frame_rate, unsigned frame_rate_base)
{
    return clock->update(clock, system_now, ts, rate, frame_rate, frame_rate_base);
}
