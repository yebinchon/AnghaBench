
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const fmt; } ;
typedef TYPE_1__ mp4mux_trackinfo_t ;
typedef int es_format_t ;



const es_format_t * mp4mux_track_GetFmt(const mp4mux_trackinfo_t *t)
{
    return &t->fmt;
}
