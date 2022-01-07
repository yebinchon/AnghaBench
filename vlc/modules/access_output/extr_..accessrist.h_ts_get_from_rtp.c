
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef scalar_t__ uint32_t ;


 unsigned int CLOCK_FREQ ;

__attribute__((used)) static inline vlc_tick_t ts_get_from_rtp( uint32_t i_rtp_ts )
{
    unsigned i_clock_rate = 90000;
    return (vlc_tick_t)i_rtp_ts * (vlc_tick_t)(CLOCK_FREQ/i_clock_rate);
}
