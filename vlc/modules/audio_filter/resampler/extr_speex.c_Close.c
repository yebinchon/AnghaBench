
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ filter_t ;
typedef int SpeexResamplerState ;


 int speex_resampler_destroy (int *) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    SpeexResamplerState *st = (SpeexResamplerState *)filter->p_sys;

    speex_resampler_destroy (st);
}
