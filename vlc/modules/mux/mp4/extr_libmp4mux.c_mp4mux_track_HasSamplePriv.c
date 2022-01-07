
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_data; } ;
struct TYPE_5__ {TYPE_1__ sample_priv; } ;
typedef TYPE_2__ mp4mux_trackinfo_t ;



bool mp4mux_track_HasSamplePriv(const mp4mux_trackinfo_t *t)
{
    return t->sample_priv.i_data != 0;
}
