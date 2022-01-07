
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int p_chans_out ;
struct TYPE_16__ {TYPE_5__* sys; } ;
typedef TYPE_4__ audio_output_t ;
struct TYPE_19__ {int i_format; int i_physical_channels; int i_rate; } ;
struct TYPE_17__ {TYPE_8__ fmt; int p_chan_table; int i_chans_to_reorder; } ;
typedef TYPE_5__ aout_sys_t ;
struct TYPE_15__ {int ENCODING_PCM_8BIT; int ENCODING_PCM_16BIT; int ENCODING_PCM_FLOAT; scalar_t__ has_CHANNEL_OUT_SIDE; int has_ENCODING_PCM_FLOAT; } ;
struct TYPE_14__ {int STREAM_MUSIC; } ;
struct TYPE_13__ {scalar_t__ getNativeOutputSampleRate; } ;
struct TYPE_18__ {TYPE_3__ AudioFormat; TYPE_2__ AudioManager; TYPE_1__ AudioTrack; } ;
typedef int JNIEnv ;


 int AOUT_CHANS_5_1 ;
 int AOUT_CHANS_7_1 ;
 void* AOUT_CHANS_STEREO ;
 int AOUT_CHAN_LEFT ;
 int AOUT_CHAN_MAX ;
 scalar_t__ AOUT_FMT_LINEAR (TYPE_8__*) ;
 int AudioTrack_Create (int *,TYPE_4__*,int ,int,int) ;
 int AudioTrack_GetChanOrder (int,int *) ;
 int JNI_AT_CALL_STATIC_INT (int ,int ) ;
 int VLC_CLIP (int ,int,int) ;



 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 unsigned int __MIN (unsigned int,unsigned int) ;
 int aout_CheckChannelReorder (int *,int *,int,int ) ;
 unsigned int aout_FormatNbChannels (TYPE_8__*) ;
 int aout_FormatPrepare (TYPE_8__*) ;
 int getNativeOutputSampleRate ;
 TYPE_7__ jfields ;
 int memset (int *,int ,int) ;
 int msg_Warn (TYPE_4__*,char*) ;

__attribute__((used)) static int
StartPCM( JNIEnv *env, audio_output_t *p_aout, unsigned i_max_channels )
{
    aout_sys_t *p_sys = p_aout->sys;
    unsigned i_nb_channels;
    int i_at_format, i_ret;

    if (jfields.AudioTrack.getNativeOutputSampleRate)
        p_sys->fmt.i_rate =
            JNI_AT_CALL_STATIC_INT( getNativeOutputSampleRate,
                                    jfields.AudioManager.STREAM_MUSIC );
    else
        p_sys->fmt.i_rate = VLC_CLIP( p_sys->fmt.i_rate, 4000, 48000 );

    do
    {

        switch( p_sys->fmt.i_format )
        {
        case 128:
            i_at_format = jfields.AudioFormat.ENCODING_PCM_8BIT;
            break;
        case 129:
            i_at_format = jfields.AudioFormat.ENCODING_PCM_16BIT;
            break;
        case 130:
            if( jfields.AudioFormat.has_ENCODING_PCM_FLOAT )
                i_at_format = jfields.AudioFormat.ENCODING_PCM_FLOAT;
            else
            {
                p_sys->fmt.i_format = 129;
                i_at_format = jfields.AudioFormat.ENCODING_PCM_16BIT;
            }
            break;
        default:
            p_sys->fmt.i_format = 129;
            i_at_format = jfields.AudioFormat.ENCODING_PCM_16BIT;
            break;
        }





        i_nb_channels = aout_FormatNbChannels( &p_sys->fmt );
        if( i_nb_channels == 0 )
            return VLC_EGENERIC;
        if( AOUT_FMT_LINEAR( &p_sys->fmt ) )
            i_nb_channels = __MIN( i_max_channels, i_nb_channels );
        if( i_nb_channels > 5 )
        {
            if( i_nb_channels > 7 && jfields.AudioFormat.has_CHANNEL_OUT_SIDE )
                p_sys->fmt.i_physical_channels = AOUT_CHANS_7_1;
            else
                p_sys->fmt.i_physical_channels = AOUT_CHANS_5_1;
        } else
        {
            if( i_nb_channels == 1 )
                p_sys->fmt.i_physical_channels = AOUT_CHAN_LEFT;
            else
                p_sys->fmt.i_physical_channels = AOUT_CHANS_STEREO;
        }





        i_ret = AudioTrack_Create( env, p_aout, p_sys->fmt.i_rate, i_at_format,
                                   p_sys->fmt.i_physical_channels );
        if( i_ret != 0 )
        {
            if( p_sys->fmt.i_format == 130 )
            {
                msg_Warn( p_aout, "FL32 configuration failed, "
                                  "fallback to S16N PCM" );
                p_sys->fmt.i_format = 129;
            }
            else if( p_sys->fmt.i_physical_channels & AOUT_CHANS_5_1 )
            {
                msg_Warn( p_aout, "5.1 or 7.1 configuration failed, "
                                  "fallback to Stereo" );
                p_sys->fmt.i_physical_channels = AOUT_CHANS_STEREO;
            }
            else
                break;
        }
    } while( i_ret != 0 );

    if( i_ret != VLC_SUCCESS )
        return i_ret;

    uint32_t p_chans_out[AOUT_CHAN_MAX];
    memset( p_chans_out, 0, sizeof(p_chans_out) );
    AudioTrack_GetChanOrder( p_sys->fmt.i_physical_channels, p_chans_out );
    p_sys->i_chans_to_reorder =
        aout_CheckChannelReorder( ((void*)0), p_chans_out,
                                  p_sys->fmt.i_physical_channels,
                                  p_sys->p_chan_table );
    aout_FormatPrepare( &p_sys->fmt );
    return VLC_SUCCESS;
}
