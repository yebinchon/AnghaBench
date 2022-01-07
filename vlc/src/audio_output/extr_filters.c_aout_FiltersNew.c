
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int audio_sample_format_t ;
typedef int aout_filters_t ;
typedef int aout_filters_cfg_t ;


 int * aout_FiltersNewWithClock (int *,int *,int const*,int const*,int const*) ;

aout_filters_t *aout_FiltersNew(vlc_object_t *obj,
                                const audio_sample_format_t *restrict infmt,
                                const audio_sample_format_t *restrict outfmt,
                                const aout_filters_cfg_t *cfg)
{
    return aout_FiltersNewWithClock(obj, ((void*)0), infmt, outfmt, cfg);
}
