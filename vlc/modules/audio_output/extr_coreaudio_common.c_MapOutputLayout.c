
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef unsigned int const uint32_t ;
typedef int i_auhal_channel_mapping ;
struct TYPE_13__ {unsigned int i_physical_channels; } ;
typedef TYPE_2__ audio_sample_format_t ;
typedef int audio_output_t ;
struct TYPE_14__ {scalar_t__ mChannelLayoutTag; int mNumberChannelDescriptions; TYPE_1__* mChannelDescriptions; } ;
struct TYPE_12__ {size_t mChannelLabel; } ;
typedef TYPE_3__ AudioChannelLayout ;
typedef size_t const AudioChannelLabel ;


 void* AOUT_CHANS_STEREO ;
 TYPE_3__* GetLayoutDescription (int *,TYPE_3__ const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int aout_FormatNbChannels (TYPE_2__*) ;
 int aout_FormatPrepare (TYPE_2__*) ;
 int aout_FormatPrintChannels (TYPE_2__*) ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 scalar_t__ kAudioChannelLayoutTag_UseChannelDescriptions ;
 int msg_Dbg (int *,char*,...) ;

__attribute__((used)) static int
MapOutputLayout(audio_output_t *p_aout, audio_sample_format_t *fmt,
                const AudioChannelLayout *outlayout, bool *warn_configuration)
{

    fmt->i_physical_channels = 0;
    uint32_t i_original = fmt->i_physical_channels;
    AudioChannelLayout *reslayout = ((void*)0);

    if (outlayout == ((void*)0))
    {
        msg_Dbg(p_aout, "not output layout, default to Stereo");
        fmt->i_physical_channels = AOUT_CHANS_STEREO;
        goto end;
    }

    if (outlayout->mChannelLayoutTag !=
        kAudioChannelLayoutTag_UseChannelDescriptions)
    {
        reslayout = GetLayoutDescription(p_aout, outlayout);
        if (reslayout == ((void*)0))
            return VLC_EGENERIC;
        outlayout = reslayout;
    }

    if (i_original == 145
     || outlayout->mNumberChannelDescriptions < 2)
    {

        fmt->i_physical_channels = 145;
        msg_Dbg(p_aout, "output layout of AUHAL has 1 channel");
    }
    else if (i_original == (144 | 137)
          || outlayout->mNumberChannelDescriptions < 3)
    {

        fmt->i_physical_channels = AOUT_CHANS_STEREO;
        msg_Dbg(p_aout, "output layout of AUHAL is Stereo");
    }
    else
    {
        assert(outlayout->mNumberChannelDescriptions > 0);

        msg_Dbg(p_aout, "output layout of AUHAL has %i channels",
                outlayout->mNumberChannelDescriptions);


        static const unsigned i_auhal_channel_mapping[] = {
            [133] = 144,
            [129] = 137,
            [136] = 145,
            [134] = 143,
            [132] = 139,
            [128] = 138,

            [131] = 142,

            [130] = 141,
            [135] = 140
        };
        static const size_t i_auhal_size = sizeof(i_auhal_channel_mapping)
                                         / sizeof(i_auhal_channel_mapping[0]);


        for (unsigned i = 0; i < outlayout->mNumberChannelDescriptions; i++)
        {
            AudioChannelLabel chan =
                outlayout->mChannelDescriptions[i].mChannelLabel;

            msg_Dbg(p_aout, "this is channel: %d", (int) chan);

            if (chan < i_auhal_size && i_auhal_channel_mapping[chan] > 0)
                fmt->i_physical_channels |= i_auhal_channel_mapping[chan];
            else
                msg_Dbg(p_aout, "found nonrecognized channel %d at index "
                        "%d", chan, i);
        }
        if (fmt->i_physical_channels == 0)
        {
            fmt->i_physical_channels = AOUT_CHANS_STEREO;
            if (warn_configuration)
                *warn_configuration = 1;
        }

    }

end:
    free(reslayout);
    aout_FormatPrepare(fmt);

    msg_Dbg(p_aout, "selected %d physical channels for device output",
            aout_FormatNbChannels(fmt));
    msg_Dbg(p_aout, "VLC will output: %s", aout_FormatPrintChannels(fmt));

    return VLC_SUCCESS;
}
