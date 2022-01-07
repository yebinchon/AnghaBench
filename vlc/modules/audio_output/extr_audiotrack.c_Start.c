
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_57__ TYPE_9__ ;
typedef struct TYPE_56__ TYPE_8__ ;
typedef struct TYPE_55__ TYPE_7__ ;
typedef struct TYPE_54__ TYPE_6__ ;
typedef struct TYPE_53__ TYPE_5__ ;
typedef struct TYPE_52__ TYPE_4__ ;
typedef struct TYPE_51__ TYPE_3__ ;
typedef struct TYPE_50__ TYPE_30__ ;
typedef struct TYPE_49__ TYPE_2__ ;
typedef struct TYPE_48__ TYPE_1__ ;
typedef struct TYPE_47__ TYPE_12__ ;
typedef struct TYPE_46__ TYPE_11__ ;
typedef struct TYPE_45__ TYPE_10__ ;


typedef scalar_t__ jshortArray ;
typedef scalar_t__ jobject ;
typedef scalar_t__ jfloatArray ;
typedef scalar_t__ jbyteArray ;
struct TYPE_57__ {scalar_t__ channel_type; scalar_t__ i_format; int i_bytes_per_frame; int i_frame_length; scalar_t__ i_rate; int i_physical_channels; } ;
typedef TYPE_9__ audio_sample_format_t ;
struct TYPE_45__ {int (* mute_set ) (TYPE_10__*,int) ;int (* volume_set ) (TYPE_10__*,int ) ;TYPE_11__* sys; } ;
typedef TYPE_10__ audio_output_t ;
struct TYPE_48__ {int p_data; } ;
struct TYPE_55__ {TYPE_1__ bytebuffer; int p_floatarray; int p_shortarray; int p_bytearray; } ;
struct TYPE_56__ {int i_size; TYPE_7__ u; scalar_t__ i_write; scalar_t__ i_read; } ;
struct TYPE_52__ {int p_obj; } ;
struct TYPE_49__ {int i_size; } ;
struct TYPE_46__ {scalar_t__ at_dev; int i_write_type; int b_thread_running; int b_thread_paused; TYPE_9__ fmt; scalar_t__ mute; int volume; int thread; TYPE_8__ circular; TYPE_4__ timestamp; TYPE_2__ audiotrack_args; int i_max_audiotrack_samples; } ;
typedef TYPE_11__ aout_sys_t ;
struct TYPE_54__ {scalar_t__ writeBufferV21; scalar_t__ writeV23; } ;
struct TYPE_53__ {int has_ENCODING_IEC61937; } ;
struct TYPE_51__ {int ctor; scalar_t__ clazz; } ;
struct TYPE_50__ {TYPE_6__ AudioTrack; TYPE_5__ AudioFormat; TYPE_3__ AudioTimestamp; } ;
struct TYPE_47__ {int (* DeleteLocalRef ) (TYPE_12__**,scalar_t__) ;int (* NewGlobalRef ) (TYPE_12__**,scalar_t__) ;scalar_t__ (* NewFloatArray ) (TYPE_12__**,int) ;scalar_t__ (* NewShortArray ) (TYPE_12__**,int) ;scalar_t__ (* NewByteArray ) (TYPE_12__**,int) ;} ;
typedef TYPE_12__* JNIEnv ;


 int AOUT_CHANS_STEREO ;
 scalar_t__ AOUT_FMT_LINEAR (TYPE_9__*) ;
 int AOUT_MAX_PREPARE_TIME ;
 scalar_t__ AT_DEV_ENCODED ;
 int AT_DEV_MAX_CHANNELS ;
 scalar_t__ AT_DEV_STEREO ;
 scalar_t__ AUDIO_CHANNEL_TYPE_AMBISONICS ;
 scalar_t__ AUDIO_CHANNEL_TYPE_BITMAP ;
 int AudioTrack_Reset (TYPE_12__**,TYPE_10__*) ;
 int AudioTrack_Thread ;
 int BYTES_TO_FRAMES (int ) ;
 int CHECK_AT_EXCEPTION (char*) ;
 TYPE_12__** GET_ENV () ;
 int JNI_AT_CALL_VOID (int ) ;
 scalar_t__ JNI_CALL (int ,scalar_t__,int ) ;
 int NewObject ;
 int StartPCM (TYPE_12__**,TYPE_10__*,unsigned int) ;
 int StartPassthrough (TYPE_12__**,TYPE_10__*) ;
 int Stop (TYPE_10__*) ;
 scalar_t__ VLC_CODEC_FL32 ;
 scalar_t__ VLC_CODEC_SPDIFL ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;





 int aout_FormatPrepare (TYPE_9__*) ;
 int aout_FormatPrint (TYPE_10__*,char*,TYPE_9__*) ;
 int assert (int ) ;
 TYPE_30__ jfields ;
 int malloc (int) ;
 int msg_Dbg (TYPE_10__*,char*) ;
 int msg_Err (TYPE_10__*,char*) ;
 int play ;
 int samples_from_vlc_tick (int ,int) ;
 int stub1 (TYPE_12__**,scalar_t__) ;
 int stub10 (TYPE_12__**,scalar_t__) ;
 int stub11 (TYPE_12__**,scalar_t__) ;
 int stub12 (TYPE_10__*,int ) ;
 int stub13 (TYPE_10__*,int) ;
 int stub2 (TYPE_12__**,scalar_t__) ;
 scalar_t__ stub3 (TYPE_12__**,int) ;
 int stub4 (TYPE_12__**,scalar_t__) ;
 int stub5 (TYPE_12__**,scalar_t__) ;
 scalar_t__ stub6 (TYPE_12__**,int) ;
 int stub7 (TYPE_12__**,scalar_t__) ;
 int stub8 (TYPE_12__**,scalar_t__) ;
 scalar_t__ stub9 (TYPE_12__**,int) ;
 int var_InheritBool (TYPE_10__*,char*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_10__*,int ) ;

__attribute__((used)) static int
Start( audio_output_t *p_aout, audio_sample_format_t *restrict p_fmt )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;
    int i_ret;
    bool b_try_passthrough;
    unsigned i_max_channels;

    if( p_sys->at_dev == AT_DEV_ENCODED )
    {
        b_try_passthrough = 1;
        i_max_channels = AT_DEV_MAX_CHANNELS;
    }
    else
    {
        b_try_passthrough = var_InheritBool( p_aout, "spdif" );
        i_max_channels = p_sys->at_dev == AT_DEV_STEREO ? 2 : AT_DEV_MAX_CHANNELS;
    }

    if( !( env = GET_ENV() ) )
        return VLC_EGENERIC;

    p_sys->fmt = *p_fmt;

    aout_FormatPrint( p_aout, "VLC is looking for:", &p_sys->fmt );

    bool low_latency = 0;
    if (p_sys->fmt.channel_type == AUDIO_CHANNEL_TYPE_AMBISONICS)
    {
        p_sys->fmt.channel_type = AUDIO_CHANNEL_TYPE_BITMAP;


        p_sys->fmt.i_physical_channels = AOUT_CHANS_STEREO;
        aout_FormatPrepare(&p_sys->fmt);
        low_latency = 1;
    }

    if( AOUT_FMT_LINEAR( &p_sys->fmt ) )
        i_ret = StartPCM( env, p_aout, i_max_channels );
    else if( b_try_passthrough )
        i_ret = StartPassthrough( env, p_aout );
    else
        return VLC_EGENERIC;

    if( i_ret != 0 )
        return VLC_EGENERIC;

    p_sys->i_max_audiotrack_samples = BYTES_TO_FRAMES( p_sys->audiotrack_args.i_size );
    AudioTrack_Reset( env, p_aout );

    if( p_sys->fmt.i_format == VLC_CODEC_FL32 )
    {
        msg_Dbg( p_aout, "using WRITE_FLOATARRAY");
        p_sys->i_write_type = 129;
    }
    else if( p_sys->fmt.i_format == VLC_CODEC_SPDIFL )
    {
        assert( jfields.AudioFormat.has_ENCODING_IEC61937 );
        msg_Dbg( p_aout, "using WRITE_SHORTARRAYV23");
        p_sys->i_write_type = 128;
    }
    else if( jfields.AudioTrack.writeV23 )
    {
        msg_Dbg( p_aout, "using WRITE_BYTEARRAYV23");
        p_sys->i_write_type = 131;
    }
    else if( jfields.AudioTrack.writeBufferV21 )
    {
        msg_Dbg( p_aout, "using WRITE_BYTEBUFFER");
        p_sys->i_write_type = 130;
    }
    else
    {
        msg_Dbg( p_aout, "using WRITE_BYTEARRAY");
        p_sys->i_write_type = 132;
    }

    p_sys->circular.i_read = p_sys->circular.i_write = 0;
    p_sys->circular.i_size = (int)p_sys->fmt.i_rate
                           * p_sys->fmt.i_bytes_per_frame
                           / p_sys->fmt.i_frame_length;
    if (low_latency)
    {

        p_sys->circular.i_size = p_sys->circular.i_size / 25;
    }
    else
    {

        p_sys->circular.i_size = samples_from_vlc_tick(AOUT_MAX_PREPARE_TIME, p_sys->circular.i_size);
    }


    switch( p_sys->i_write_type )
    {
        case 132:
        case 131:
        {
            jbyteArray p_bytearray;

            p_bytearray = (*env)->NewByteArray( env, p_sys->circular.i_size );
            if( p_bytearray )
            {
                p_sys->circular.u.p_bytearray = (*env)->NewGlobalRef( env, p_bytearray );
                (*env)->DeleteLocalRef( env, p_bytearray );
            }

            if( !p_sys->circular.u.p_bytearray )
            {
                msg_Err(p_aout, "byte array allocation failed");
                goto error;
            }
            break;
        }
        case 128:
        {
            jshortArray p_shortarray;

            p_shortarray = (*env)->NewShortArray( env,
                                                  p_sys->circular.i_size / 2 );
            if( p_shortarray )
            {
                p_sys->circular.u.p_shortarray = (*env)->NewGlobalRef( env, p_shortarray );
                (*env)->DeleteLocalRef( env, p_shortarray );
            }
            if( !p_sys->circular.u.p_shortarray )
            {
                msg_Err(p_aout, "short array allocation failed");
                goto error;
            }
            break;
        }
        case 129:
        {
            jfloatArray p_floatarray;

            p_floatarray = (*env)->NewFloatArray( env,
                                                  p_sys->circular.i_size / 4 );
            if( p_floatarray )
            {
                p_sys->circular.u.p_floatarray = (*env)->NewGlobalRef( env, p_floatarray );
                (*env)->DeleteLocalRef( env, p_floatarray );
            }
            if( !p_sys->circular.u.p_floatarray )
            {
                msg_Err(p_aout, "float array allocation failed");
                goto error;
            }
            break;
        }
        case 130:
            p_sys->circular.u.bytebuffer.p_data = malloc( p_sys->circular.i_size );
            if( !p_sys->circular.u.bytebuffer.p_data )
            {
                msg_Err(p_aout, "bytebuffer allocation failed");
                goto error;
            }
            break;
    }


    p_sys->b_thread_running = 1;
    p_sys->b_thread_paused = 0;
    if ( vlc_clone( &p_sys->thread, AudioTrack_Thread, p_aout,
                    VLC_THREAD_PRIORITY_LOW ) )
    {
        msg_Err(p_aout, "vlc clone failed");
        goto error;
    }

    JNI_AT_CALL_VOID( play );
    CHECK_AT_EXCEPTION( "play" );

    *p_fmt = p_sys->fmt;

    p_aout->volume_set(p_aout, p_sys->volume);
    if (p_sys->mute)
        p_aout->mute_set(p_aout, 1);
    aout_FormatPrint( p_aout, "VLC will output:", &p_sys->fmt );

    return VLC_SUCCESS;

error:
    Stop( p_aout );
    return VLC_EGENERIC;
}
