
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int i_rate; } ;
struct TYPE_12__ {TYPE_3__ audio; } ;
struct TYPE_13__ {TYPE_4__ fmt_in; } ;
typedef TYPE_5__ filter_t ;
typedef int block_t ;
struct TYPE_14__ {int count; TYPE_5__* rate_filter; scalar_t__ resampling; TYPE_8__* resampler; TYPE_8__** tab; } ;
typedef TYPE_6__ aout_filters_t ;
struct TYPE_9__ {int i_rate; } ;
struct TYPE_10__ {TYPE_1__ audio; } ;
struct TYPE_15__ {TYPE_2__ fmt_in; } ;


 int * aout_FiltersPipelinePlay (TYPE_8__**,int,int *) ;
 int assert (int ) ;
 int block_Release (int *) ;
 int lroundf (int) ;

block_t *aout_FiltersPlay(aout_filters_t *filters, block_t *block, float rate)
{
    int nominal_rate = 0;

    if (rate != 1.f)
    {
        filter_t *rate_filter = filters->rate_filter;

        if (rate_filter == ((void*)0))
            goto drop;


        nominal_rate = rate_filter->fmt_in.audio.i_rate;
        rate_filter->fmt_in.audio.i_rate = lroundf(nominal_rate * rate);
    }

    block = aout_FiltersPipelinePlay (filters->tab, filters->count, block);
    if (filters->resampler != ((void*)0))
    {

        filters->resampler->fmt_in.audio.i_rate += filters->resampling;
        block = aout_FiltersPipelinePlay (&filters->resampler, 1, block);
        filters->resampler->fmt_in.audio.i_rate -= filters->resampling;
    }

    if (nominal_rate != 0)
    {
        assert (filters->rate_filter != ((void*)0));
        filters->rate_filter->fmt_in.audio.i_rate = nominal_rate;
    }
    return block;

drop:
    block_Release (block);
    return ((void*)0);
}
