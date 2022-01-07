
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int int64_t ;
struct TYPE_3__ {int hour; int minute; int second; int frame_u; } ;
typedef TYPE_1__ dvd_time_t ;


 double BCD2D (int) ;
 scalar_t__ VLC_TICK_FROM_MS (double) ;
 scalar_t__ vlc_tick_from_sec (int) ;

__attribute__((used)) static vlc_tick_t dvdtime_to_time( dvd_time_t *dtime )
{



    double f_fps, f_ms;

    int64_t sec = (int64_t)((((dtime->hour & 0xf0) >> 4) * 10 + (dtime->hour & 0x0f))) * 60 * 60;
    sec += (int64_t)((((dtime->minute & 0xf0) >> 4) * 10 + (dtime->minute & 0x0f))) * 60;
    sec += (int64_t)((((dtime->second & 0xf0) >> 4) * 10 + (dtime->second & 0x0f)));

    switch((dtime->frame_u & 0xc0) >> 6)
    {
    case 1:
        f_fps = 25.0;
        break;
    case 3:
        f_fps = 29.97;
        break;
    default:
        f_fps = 2500.0;
        break;
    }
    f_ms = (((dtime->frame_u&0x3f & 0xf0) >> 4) * 10 + (dtime->frame_u&0x3f & 0x0f)) * 1000.0 / f_fps;
    return vlc_tick_from_sec(sec) + VLC_TICK_FROM_MS(f_ms);
}
