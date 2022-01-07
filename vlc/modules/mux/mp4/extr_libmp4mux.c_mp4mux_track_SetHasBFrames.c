
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_hasbframes; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;



void mp4mux_track_SetHasBFrames(mp4mux_trackinfo_t *t)
{
    t->b_hasbframes = 1;
}
