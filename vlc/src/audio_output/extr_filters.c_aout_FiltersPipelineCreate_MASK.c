#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  filter_t ;
typedef  int /*<<< orphan*/  config_chain_t ;
struct TYPE_13__ {scalar_t__ i_physical_channels; scalar_t__ i_chan_mode; scalar_t__ channel_type; scalar_t__ i_format; scalar_t__ i_rate; } ;
typedef  TYPE_1__ audio_sample_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 scalar_t__ VLC_CODEC_FL32 ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC13(vlc_object_t *obj, filter_t **filters,
                                      unsigned *count, unsigned max,
                                 const audio_sample_format_t *restrict infmt,
                                 const audio_sample_format_t *restrict outfmt,
                                 bool headphones)
{
    FUNC7 (obj, "conversion:", infmt, outfmt);
    max -= *count;
    filters += *count;

    /* There is a lot of second guessing on what the conversion plugins can
     * and cannot do. This seems hardly avoidable, the conversion problem need
     * to be reduced somehow. */
    audio_sample_format_t input = *infmt;
    unsigned n = 0;

    if (!FUNC0(&input))
    {
        FUNC11(obj, "Can't convert non linear input");
        return -1;
    }

    /* Remix channels */
    if (infmt->i_physical_channels != outfmt->i_physical_channels
     || infmt->i_chan_mode != outfmt->i_chan_mode
     || infmt->channel_type != outfmt->channel_type)
    {   /* Remixing currently requires FL32... TODO: S16N */
        if (input.i_format != VLC_CODEC_FL32)
        {
            if (n == max)
                goto overflow;

            filter_t *f = FUNC3 (obj, VLC_CODEC_FL32, &input);
            if (f == NULL)
            {
                FUNC11 (obj, "cannot find %s for conversion pipeline",
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
        FUNC6 (&output);

        const char *filter_type =
            infmt->channel_type != outfmt->channel_type ?
            "audio renderer" : "audio converter";

        config_chain_t *cfg = NULL;
        if (headphones)
            FUNC9(&cfg, "{headphones=true}");
        filter_t *f = FUNC1(obj, NULL, filter_type, NULL,
                                   &input, &output, cfg, true);
        if (cfg)
            FUNC8(cfg);

        if (f == NULL)
        {
            FUNC11 (obj, "cannot find %s for conversion pipeline",
                     "remixer");
            goto error;
        }

        input = output;
        filters[n++] = f;
    }

    /* Resample */
    if (input.i_rate != outfmt->i_rate)
    {   /* Resampling works with any linear format, but may be ugly. */
        if (n == max)
            goto overflow;

        audio_sample_format_t output = input;
        output.i_rate = outfmt->i_rate;

        filter_t *f = FUNC2 (obj, &input, &output);
        if (f == NULL)
        {
            FUNC11 (obj, "cannot find %s for conversion pipeline",
                     "resampler");
            goto error;
        }

        input = output;
        filters[n++] = f;
    }

    /* Format */
    if (input.i_format != outfmt->i_format)
    {
        if (max == 0)
            goto overflow;

        filter_t *f = FUNC3 (obj, outfmt->i_format, &input);
        if (f == NULL)
        {
            FUNC11 (obj, "cannot find %s for conversion pipeline",
                     "post-mix converter");
            goto error;
        }
        filters[n++] = f;
    }

    FUNC10 (obj, "conversion pipeline complete");
    *count += n;
    return 0;

overflow:
    FUNC11 (obj, "maximum of %u conversion filters reached", max);
    FUNC12 (obj, FUNC4("Audio filtering failed"),
        FUNC4("The maximum number of filters (%u) was reached."), max);
error:
    FUNC5 (filters, n);
    return -1;
}