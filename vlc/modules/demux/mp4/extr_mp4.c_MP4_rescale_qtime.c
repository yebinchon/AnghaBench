
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int uint32_t ;
typedef int int64_t ;


 int CLOCK_FREQ ;
 int MP4_rescale (int ,int ,int ) ;

__attribute__((used)) static int64_t MP4_rescale_qtime( vlc_tick_t i_value, uint32_t i_timescale )
{
    return MP4_rescale(i_value, CLOCK_FREQ, i_timescale);
}
