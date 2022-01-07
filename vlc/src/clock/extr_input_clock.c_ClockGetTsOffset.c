
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float vlc_tick_t ;
struct TYPE_3__ {float i_pts_delay; float rate; } ;
typedef TYPE_1__ input_clock_t ;



__attribute__((used)) static vlc_tick_t ClockGetTsOffset( input_clock_t *cl )
{
    return cl->i_pts_delay * ( 1.0f / cl->rate - 1.0f );
}
