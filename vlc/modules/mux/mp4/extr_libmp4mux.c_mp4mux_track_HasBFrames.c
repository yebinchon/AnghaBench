
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_hasbframes; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;



bool mp4mux_track_HasBFrames(const mp4mux_trackinfo_t *t)
{
    return t->b_hasbframes;
}
