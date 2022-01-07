
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct aout_sys_common {void* chans_to_reorder; int chan_table; } ;
struct TYPE_7__ {int i_physical_channels; } ;
typedef TYPE_1__ audio_sample_format_t ;
struct TYPE_8__ {scalar_t__ sys; } ;
typedef TYPE_2__ audio_output_t ;
typedef int AudioChannelLayoutTag ;


 int AOUT_CHANS_CENTER ;
 int AOUT_CHANS_REAR ;
 int AOUT_CHAN_CENTER ;
 int AOUT_CHAN_LEFT ;
 int AOUT_CHAN_LFE ;
 int AOUT_CHAN_MAX ;
 int AOUT_CHAN_MIDDLELEFT ;
 int AOUT_CHAN_MIDDLERIGHT ;
 int AOUT_CHAN_REARCENTER ;
 int AOUT_CHAN_REARLEFT ;
 int AOUT_CHAN_REARRIGHT ;
 int AOUT_CHAN_RIGHT ;
 int VLC_SUCCESS ;
 void* aout_CheckChannelReorder (int *,int*,int,int ) ;
 int aout_FormatNbChannels (TYPE_1__ const*) ;
 int kAudioChannelLayoutTag_AudioUnit_6_0 ;
 int kAudioChannelLayoutTag_DTS_8_0_B ;
 int kAudioChannelLayoutTag_DTS_8_1_B ;
 int kAudioChannelLayoutTag_DVD_10 ;
 int kAudioChannelLayoutTag_DVD_18 ;
 int kAudioChannelLayoutTag_DVD_19 ;
 int kAudioChannelLayoutTag_DVD_20 ;
 int kAudioChannelLayoutTag_DVD_3 ;
 int kAudioChannelLayoutTag_DVD_4 ;
 int kAudioChannelLayoutTag_DVD_7 ;
 int kAudioChannelLayoutTag_MPEG_6_1_A ;
 int kAudioChannelLayoutTag_MPEG_7_1_C ;
 int kAudioChannelLayoutTag_Mono ;
 int kAudioChannelLayoutTag_Stereo ;
 int msg_Dbg (TYPE_2__*,char*) ;

__attribute__((used)) static int
SetupInputLayout(audio_output_t *p_aout, const audio_sample_format_t *fmt,
                 AudioChannelLayoutTag *inlayout_tag)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;
    uint32_t chans_out[AOUT_CHAN_MAX];
    switch (aout_FormatNbChannels(fmt))
    {
        case 1:
            *inlayout_tag = kAudioChannelLayoutTag_Mono;
            break;
        case 2:
            *inlayout_tag = kAudioChannelLayoutTag_Stereo;
            break;
        case 3:
            if (fmt->i_physical_channels & AOUT_CHAN_CENTER)
                *inlayout_tag = kAudioChannelLayoutTag_DVD_7;
            else if (fmt->i_physical_channels & AOUT_CHAN_LFE)
                *inlayout_tag = kAudioChannelLayoutTag_DVD_4;
            break;
        case 4:
            if (fmt->i_physical_channels & (AOUT_CHAN_CENTER | AOUT_CHAN_LFE))
                *inlayout_tag = kAudioChannelLayoutTag_DVD_10;
            else if (fmt->i_physical_channels & AOUT_CHANS_REAR)
                *inlayout_tag = kAudioChannelLayoutTag_DVD_3;
            else if (fmt->i_physical_channels & AOUT_CHANS_CENTER)
                *inlayout_tag = kAudioChannelLayoutTag_DVD_3;
            break;
        case 5:
            if (fmt->i_physical_channels & (AOUT_CHAN_CENTER))
                *inlayout_tag = kAudioChannelLayoutTag_DVD_19;
            else if (fmt->i_physical_channels & (AOUT_CHAN_LFE))
                *inlayout_tag = kAudioChannelLayoutTag_DVD_18;
            break;
        case 6:
            if (fmt->i_physical_channels & (AOUT_CHAN_LFE))
            {

                *inlayout_tag = kAudioChannelLayoutTag_DVD_20;

                chans_out[0] = AOUT_CHAN_LEFT;
                chans_out[1] = AOUT_CHAN_RIGHT;
                chans_out[2] = AOUT_CHAN_REARLEFT;
                chans_out[3] = AOUT_CHAN_REARRIGHT;
                chans_out[4] = AOUT_CHAN_CENTER;
                chans_out[5] = AOUT_CHAN_LFE;

                p_sys->chans_to_reorder =
                    aout_CheckChannelReorder(((void*)0), chans_out,
                                             fmt->i_physical_channels,
                                             p_sys->chan_table);
                if (p_sys->chans_to_reorder)
                    msg_Dbg(p_aout, "channel reordering needed for 5.1 output");
            }
            else
            {

                *inlayout_tag = kAudioChannelLayoutTag_AudioUnit_6_0;

                chans_out[0] = AOUT_CHAN_LEFT;
                chans_out[1] = AOUT_CHAN_RIGHT;
                chans_out[2] = AOUT_CHAN_REARLEFT;
                chans_out[3] = AOUT_CHAN_REARRIGHT;
                chans_out[4] = AOUT_CHAN_CENTER;
                chans_out[5] = AOUT_CHAN_REARCENTER;

                p_sys->chans_to_reorder =
                    aout_CheckChannelReorder(((void*)0), chans_out,
                                             fmt->i_physical_channels,
                                             p_sys->chan_table);
                if (p_sys->chans_to_reorder)
                    msg_Dbg(p_aout, "channel reordering needed for 6.0 output");
            }
            break;
        case 7:

            *inlayout_tag = kAudioChannelLayoutTag_MPEG_6_1_A;

            chans_out[0] = AOUT_CHAN_LEFT;
            chans_out[1] = AOUT_CHAN_RIGHT;
            chans_out[2] = AOUT_CHAN_CENTER;
            chans_out[3] = AOUT_CHAN_LFE;
            chans_out[4] = AOUT_CHAN_REARLEFT;
            chans_out[5] = AOUT_CHAN_REARRIGHT;
            chans_out[6] = AOUT_CHAN_REARCENTER;

            p_sys->chans_to_reorder =
                aout_CheckChannelReorder(((void*)0), chans_out,
                                         fmt->i_physical_channels,
                                         p_sys->chan_table);
            if (p_sys->chans_to_reorder)
                msg_Dbg(p_aout, "channel reordering needed for 6.1 output");

            break;
        case 8:
            if (fmt->i_physical_channels & (AOUT_CHAN_LFE))
            {

                *inlayout_tag = kAudioChannelLayoutTag_MPEG_7_1_C;

                chans_out[0] = AOUT_CHAN_LEFT;
                chans_out[1] = AOUT_CHAN_RIGHT;
                chans_out[2] = AOUT_CHAN_CENTER;
                chans_out[3] = AOUT_CHAN_LFE;
                chans_out[4] = AOUT_CHAN_MIDDLELEFT;
                chans_out[5] = AOUT_CHAN_MIDDLERIGHT;
                chans_out[6] = AOUT_CHAN_REARLEFT;
                chans_out[7] = AOUT_CHAN_REARRIGHT;
            }
            else
            {

                *inlayout_tag = kAudioChannelLayoutTag_DTS_8_0_B;

                chans_out[0] = AOUT_CHAN_MIDDLELEFT;
                chans_out[1] = AOUT_CHAN_CENTER;
                chans_out[2] = AOUT_CHAN_MIDDLERIGHT;
                chans_out[3] = AOUT_CHAN_LEFT;
                chans_out[4] = AOUT_CHAN_RIGHT;
                chans_out[5] = AOUT_CHAN_REARLEFT;
                chans_out[6] = AOUT_CHAN_REARCENTER;
                chans_out[7] = AOUT_CHAN_REARRIGHT;
            }
            p_sys->chans_to_reorder =
                aout_CheckChannelReorder(((void*)0), chans_out,
                                         fmt->i_physical_channels,
                                         p_sys->chan_table);
            if (p_sys->chans_to_reorder)
                msg_Dbg(p_aout, "channel reordering needed for 7.1 / 8.0 output");
            break;
        case 9:

            *inlayout_tag = kAudioChannelLayoutTag_DTS_8_1_B;
            chans_out[0] = AOUT_CHAN_MIDDLELEFT;
            chans_out[1] = AOUT_CHAN_CENTER;
            chans_out[2] = AOUT_CHAN_MIDDLERIGHT;
            chans_out[3] = AOUT_CHAN_LEFT;
            chans_out[4] = AOUT_CHAN_RIGHT;
            chans_out[5] = AOUT_CHAN_REARLEFT;
            chans_out[6] = AOUT_CHAN_REARCENTER;
            chans_out[7] = AOUT_CHAN_REARRIGHT;
            chans_out[8] = AOUT_CHAN_LFE;

            p_sys->chans_to_reorder =
                aout_CheckChannelReorder(((void*)0), chans_out,
                                         fmt->i_physical_channels,
                                         p_sys->chan_table);
            if (p_sys->chans_to_reorder)
                msg_Dbg(p_aout, "channel reordering needed for 8.1 output");
            break;
    }

    return VLC_SUCCESS;
}
