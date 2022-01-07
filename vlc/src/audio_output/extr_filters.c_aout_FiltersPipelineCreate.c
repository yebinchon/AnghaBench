
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int filter_t ;
typedef int config_chain_t ;
struct TYPE_13__ {scalar_t__ i_physical_channels; scalar_t__ i_chan_mode; scalar_t__ channel_type; scalar_t__ i_format; scalar_t__ i_rate; } ;
typedef TYPE_1__ audio_sample_format_t ;


 int AOUT_FMT_LINEAR (TYPE_1__*) ;
 int * CreateFilter (int *,int *,char const*,int *,TYPE_1__*,TYPE_1__*,int *,int) ;
 int * FindConverter (int *,TYPE_1__*,TYPE_1__*) ;
 int * TryFormat (int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ VLC_CODEC_FL32 ;
 int _ (char*) ;
 int aout_FiltersPipelineDestroy (int **,unsigned int) ;
 int aout_FormatPrepare (TYPE_1__*) ;
 int aout_FormatsPrint (int *,char*,TYPE_1__ const*,TYPE_1__ const*) ;
 int config_ChainDestroy (int *) ;
 int config_ChainParseOptions (int **,char*) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*,...) ;
 int vlc_dialog_display_error (int *,int ,int ,unsigned int) ;

__attribute__((used)) static int aout_FiltersPipelineCreate(vlc_object_t *obj, filter_t **filters,
                                      unsigned *count, unsigned max,
                                 const audio_sample_format_t *restrict infmt,
                                 const audio_sample_format_t *restrict outfmt,
                                 bool headphones)
{
    aout_FormatsPrint (obj, "conversion:", infmt, outfmt);
    max -= *count;
    filters += *count;




    audio_sample_format_t input = *infmt;
    unsigned n = 0;

    if (!AOUT_FMT_LINEAR(&input))
    {
        msg_Err(obj, "Can't convert non linear input");
        return -1;
    }


    if (infmt->i_physical_channels != outfmt->i_physical_channels
     || infmt->i_chan_mode != outfmt->i_chan_mode
     || infmt->channel_type != outfmt->channel_type)
    {
        if (input.i_format != VLC_CODEC_FL32)
        {
            if (n == max)
                goto overflow;

            filter_t *f = TryFormat (obj, VLC_CODEC_FL32, &input);
            if (f == ((void*)0))
            {
                msg_Err (obj, "cannot find %s for conversion pipeline",
                         "pre-mix converter");
                goto error;
            }

            filters[n++] = f;
        }

        if (n == max)
            goto overflow;

        audio_sample_format_t output;
        output.i_format = input.i_format;
        output.i_rate = input.i_rate;
        output.i_physical_channels = outfmt->i_physical_channels;
        output.channel_type = outfmt->channel_type;
        output.i_chan_mode = outfmt->i_chan_mode;
        aout_FormatPrepare (&output);

        const char *filter_type =
            infmt->channel_type != outfmt->channel_type ?
            "audio renderer" : "audio converter";

        config_chain_t *cfg = ((void*)0);
        if (headphones)
            config_ChainParseOptions(&cfg, "{headphones=true}");
        filter_t *f = CreateFilter(obj, ((void*)0), filter_type, ((void*)0),
                                   &input, &output, cfg, 1);
        if (cfg)
            config_ChainDestroy(cfg);

        if (f == ((void*)0))
        {
            msg_Err (obj, "cannot find %s for conversion pipeline",
                     "remixer");
            goto error;
        }

        input = output;
        filters[n++] = f;
    }


    if (input.i_rate != outfmt->i_rate)
    {
        if (n == max)
            goto overflow;

        audio_sample_format_t output = input;
        output.i_rate = outfmt->i_rate;

        filter_t *f = FindConverter (obj, &input, &output);
        if (f == ((void*)0))
        {
            msg_Err (obj, "cannot find %s for conversion pipeline",
                     "resampler");
            goto error;
        }

        input = output;
        filters[n++] = f;
    }


    if (input.i_format != outfmt->i_format)
    {
        if (max == 0)
            goto overflow;

        filter_t *f = TryFormat (obj, outfmt->i_format, &input);
        if (f == ((void*)0))
        {
            msg_Err (obj, "cannot find %s for conversion pipeline",
                     "post-mix converter");
            goto error;
        }
        filters[n++] = f;
    }

    msg_Dbg (obj, "conversion pipeline complete");
    *count += n;
    return 0;

overflow:
    msg_Err (obj, "maximum of %u conversion filters reached", max);
    vlc_dialog_display_error (obj, _("Audio filtering failed"),
        _("The maximum number of filters (%u) was reached."), max);
error:
    aout_FiltersPipelineDestroy (filters, n);
    return -1;
}
