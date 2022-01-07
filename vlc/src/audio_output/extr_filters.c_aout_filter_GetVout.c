
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_8__ {int * fmt; int clock; int * vout; } ;
typedef TYPE_2__ vout_configuration_t ;
typedef int video_format_t ;
struct TYPE_7__ {int sys; } ;
struct TYPE_9__ {TYPE_1__ owner; } ;
typedef TYPE_3__ filter_t ;


 int VLC_OBJECT (TYPE_3__*) ;
 scalar_t__ unlikely (int ) ;
 int video_format_AdjustColorSpace (int *) ;
 int vout_Close (int *) ;
 int * vout_Create (int ) ;
 scalar_t__ vout_Request (TYPE_2__*,int *,int *) ;

vout_thread_t *aout_filter_GetVout(filter_t *filter, const video_format_t *fmt)
{
    vout_thread_t *vout = vout_Create(VLC_OBJECT(filter));
    if (unlikely(vout == ((void*)0)))
        return ((void*)0);

    video_format_t adj_fmt = *fmt;
    vout_configuration_t cfg = {
        .vout = vout, .clock = filter->owner.sys, .fmt = &adj_fmt,
    };

    video_format_AdjustColorSpace(&adj_fmt);

    if (vout_Request(&cfg, ((void*)0), ((void*)0))) {
        vout_Close(vout);
        vout = ((void*)0);
    }
    return vout;
}
