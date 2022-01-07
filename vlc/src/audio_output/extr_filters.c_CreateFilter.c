
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_clock_t ;
struct TYPE_19__ {scalar_t__ i_physical_channels; scalar_t__ i_channels; int i_format; } ;
struct TYPE_17__ {TYPE_5__ audio; int i_codec; } ;
struct TYPE_16__ {TYPE_5__ audio; int i_codec; } ;
struct TYPE_15__ {int * sys; } ;
struct TYPE_18__ {int * pf_audio_filter; int * p_module; TYPE_3__ fmt_out; TYPE_2__ fmt_in; int * p_cfg; TYPE_1__ owner; } ;
typedef TYPE_4__ filter_t ;
typedef int config_chain_t ;
typedef TYPE_5__ audio_sample_format_t ;


 int AOUT_FMTS_IDENTICAL (TYPE_5__*,TYPE_5__ const*) ;
 scalar_t__ aout_FormatNbChannels (TYPE_5__ const*) ;
 int assert (int) ;
 int * module_need (TYPE_4__*,char const*,char const*,int) ;
 scalar_t__ unlikely (int ) ;
 TYPE_4__* vlc_custom_create (int *,int,char const*) ;
 int vlc_object_delete (TYPE_4__*) ;

__attribute__((used)) static filter_t *CreateFilter(vlc_object_t *obj, vlc_clock_t *clock,
                              const char *type, const char *name,
                              const audio_sample_format_t *infmt,
                              const audio_sample_format_t *outfmt,
                              config_chain_t *cfg, bool const_fmt)
{
    filter_t *filter = vlc_custom_create (obj, sizeof (*filter), type);
    if (unlikely(filter == ((void*)0)))
        return ((void*)0);

    filter->owner.sys = clock;
    filter->p_cfg = cfg;
    filter->fmt_in.audio = *infmt;
    filter->fmt_in.i_codec = infmt->i_format;
    filter->fmt_out.audio = *outfmt;
    filter->fmt_out.i_codec = outfmt->i_format;




    if( infmt->i_physical_channels != 0 )
        assert( aout_FormatNbChannels( infmt ) == infmt->i_channels );
    if( outfmt->i_physical_channels != 0 )
        assert( aout_FormatNbChannels( outfmt ) == outfmt->i_channels );


    filter->p_module = module_need (filter, type, name, 0);


    if (filter->p_module == ((void*)0) || const_fmt)
    {

        assert (AOUT_FMTS_IDENTICAL(&filter->fmt_in.audio, infmt));
        assert (AOUT_FMTS_IDENTICAL(&filter->fmt_out.audio, outfmt));
    }


    if (filter->p_module == ((void*)0))
    {
        vlc_object_delete(filter);
        filter = ((void*)0);
    }
    else
        assert (filter->pf_audio_filter != ((void*)0));
    return filter;
}
