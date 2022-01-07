
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {int channel_type; int i_rate; void* i_physical_channels; int i_format; int i_frame_length; int i_bytes_per_frame; } ;
typedef TYPE_1__ audio_sample_format_t ;
struct TYPE_12__ {int b_playing; int * p_dsobject; int * p_dsbuffer; int * p_notify; int lock; int cond; scalar_t__ i_data; scalar_t__ i_last_read; scalar_t__ i_write; int eraser_thread; } ;
typedef TYPE_2__ aout_stream_sys_t ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int A52_FRAME_NB ;
 void* AOUT_CHANS_2_0 ;
 void* AOUT_CHANS_4_0 ;
 void* AOUT_CHANS_5_1 ;
 void* AOUT_CHANS_7_1 ;
 void* AOUT_CHAN_CENTER ;
 scalar_t__ AOUT_FMT_HDMI (TYPE_1__*) ;
 scalar_t__ AOUT_FMT_SPDIF (TYPE_1__*) ;
 int AOUT_SPDIF_SIZE ;
 int AUDIO_CHANNEL_TYPE_BITMAP ;
 scalar_t__ CreateDSBuffer (int *,TYPE_2__*,int ,void*,int,int ,int) ;
 scalar_t__ CreateDSBufferPCM (int *,TYPE_2__*,int *,void*,int ,int) ;
 scalar_t__ DSERR_UNSUPPORTED ;
 int DSSCL_EXCLUSIVE ;




 int DSSPEAKER_CONFIG (int) ;




 scalar_t__ DS_OK ;
 int ENOMEM ;
 scalar_t__ E_FAIL ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetDesktopWindow () ;
 int IDirectSoundBuffer_Release (int *) ;
 int IDirectSoundNotify_Release (int *) ;
 scalar_t__ IDirectSound_GetSpeakerConfig (int *,int*) ;
 int IDirectSound_Release (int *) ;
 scalar_t__ IDirectSound_SetCooperativeLevel (int *,int ,int ) ;
 int PlayedDataEraser ;
 int VLC_CODEC_SPDIFL ;
 int VLC_THREAD_PRIORITY_LOW ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_DOINHERIT ;
 int aout_FormatNbChannels (TYPE_1__*) ;
 int aout_FormatPrepare (TYPE_1__*) ;
 int free (char*) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*,...) ;
 int msg_Warn (int *,char*) ;
 char** speaker_list ;
 int strlen (char const* const) ;
 int strncmp (char const* const,char*,int ) ;
 scalar_t__ unlikely (int) ;
 int var_Create (int *,char*,int) ;
 char* var_CreateGetString (int *,char*) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 int vlc_clone (int *,int ,void*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static HRESULT Start( vlc_object_t *obj, aout_stream_sys_t *sys,
                      audio_sample_format_t *restrict pfmt )
{
    if( aout_FormatNbChannels( pfmt ) == 0 )
        return E_FAIL;
    if( IDirectSound_SetCooperativeLevel( sys->p_dsobject, GetDesktopWindow(),
                                          DSSCL_EXCLUSIVE) )
        msg_Warn( obj, "cannot set direct sound cooperative level" );


    if( AOUT_FMT_HDMI( pfmt ) )
        return E_FAIL;

    audio_sample_format_t fmt = *pfmt;
    const char *const *ppsz_compare = speaker_list;
    char *psz_speaker;
    int i = 0;
    HRESULT hr = DSERR_UNSUPPORTED;


    var_Create( obj, "directx-audio-float32",
                VLC_VAR_BOOL | VLC_VAR_DOINHERIT );
    psz_speaker = var_CreateGetString( obj, "directx-audio-speaker" );

    while ( *ppsz_compare != ((void*)0) )
    {
        if ( !strncmp( *ppsz_compare, psz_speaker, strlen(*ppsz_compare) ) )
        {
            break;
        }
        ppsz_compare++; i++;
    }

    if ( *ppsz_compare == ((void*)0) )
    {
        msg_Err( obj, "(%s) isn't valid speaker setup option", psz_speaker );
        msg_Err( obj, "Defaulting to Windows default speaker config");
        i = 0;
    }
    free( psz_speaker );

    vlc_mutex_init(&sys->lock);
    vlc_cond_init(&sys->cond);

    if( AOUT_FMT_SPDIF( &fmt ) )
    {
        if( var_InheritBool( obj, "spdif" ) )
            hr = CreateDSBuffer( obj, sys, VLC_CODEC_SPDIFL,
                                 fmt.i_physical_channels,
                                 aout_FormatNbChannels(&fmt), fmt.i_rate, 0 );

        if( hr == DS_OK )
        {
            msg_Dbg( obj, "using A/52 pass-through over S/PDIF" );
            fmt.i_format = VLC_CODEC_SPDIFL;


            fmt.i_bytes_per_frame = AOUT_SPDIF_SIZE;
            fmt.i_frame_length = A52_FRAME_NB;
        }
        else
        {
            vlc_mutex_destroy(&sys->lock);
            vlc_cond_destroy(&sys->cond);
            return E_FAIL;
        }
    }

    if( hr != DS_OK )
    {
        if( i == 0 )
        {
            DWORD ui_speaker_config;
            int i_channels = 2;
            int i_orig_channels = aout_FormatNbChannels( &fmt );



            hr = IDirectSound_GetSpeakerConfig( sys->p_dsobject,
                                                &ui_speaker_config );
            if( FAILED(hr) )
            {
                ui_speaker_config = 129;
                msg_Dbg( obj, "GetSpeakerConfig failed" );
            }

            const char *name = "Unknown";
            switch( DSSPEAKER_CONFIG(ui_speaker_config) )
            {
                case 133:
                case 132:
                    name = "7.1";
                    i_channels = 8;
                    break;
                case 135:
                case 134:
                    name = "5.1";
                    i_channels = 6;
                    break;
                case 130:
                    name = "Quad";
                    i_channels = 4;
                    break;







                case 128:
                    name = "Surround";
                    i_channels = 4;
                    break;
                case 129:
                    name = "Stereo";
                    i_channels = 2;
                    break;
            }

            if( i_channels >= i_orig_channels )
                i_channels = i_orig_channels;

            msg_Dbg( obj, "%s speaker config: %s and stream has "
                     "%d channels, using %d channels", "Windows", name,
                     i_orig_channels, i_channels );

            switch( i_channels )
            {
                case 8:
                    fmt.i_physical_channels = AOUT_CHANS_7_1;
                    break;
                case 7:
                case 6:
                    fmt.i_physical_channels = AOUT_CHANS_5_1;
                    break;
                case 5:
                case 4:
                    fmt.i_physical_channels = AOUT_CHANS_4_0;
                    break;
                default:
                    fmt.i_physical_channels = AOUT_CHANS_2_0;
                    break;
            }
        }
        else
        {
            const char *name = "Non-existant";
            switch( i )
            {
                case 1:
                    name = "Mono";
                    fmt.i_physical_channels = AOUT_CHAN_CENTER;
                    break;
                case 2:
                    name = "Stereo";
                    fmt.i_physical_channels = AOUT_CHANS_2_0;
                    break;
                case 3:
                    name = "Quad";
                    fmt.i_physical_channels = AOUT_CHANS_4_0;
                    break;
                case 4:
                    name = "5.1";
                    fmt.i_physical_channels = AOUT_CHANS_5_1;
                    break;
                case 5:
                    name = "7.1";
                    fmt.i_physical_channels = AOUT_CHANS_7_1;
                    break;
            }
            msg_Dbg( obj, "%s speaker config: %s", "VLC", name );
        }


        aout_FormatPrepare( &fmt );

        hr = CreateDSBufferPCM( obj, sys, &fmt.i_format,
                                fmt.i_physical_channels, fmt.i_rate, 0 );
        if( hr != DS_OK )
        {
            msg_Err( obj, "cannot open directx audio device" );
            goto error;
        }
    }

    int ret = vlc_clone(&sys->eraser_thread, PlayedDataEraser, (void*) obj,
                        VLC_THREAD_PRIORITY_LOW);
    if( unlikely( ret ) )
    {
        if( ret != ENOMEM )
            msg_Err( obj, "Couldn't start eraser thread" );

        hr = E_FAIL;
        goto error;
    }

    fmt.channel_type = AUDIO_CHANNEL_TYPE_BITMAP;

    *pfmt = fmt;
    sys->b_playing = 0;
    sys->i_write = 0;
    sys->i_last_read = 0;
    sys->i_data = 0;

    return DS_OK;

error:
    vlc_cond_destroy(&sys->cond);
    vlc_mutex_destroy(&sys->lock);

    if( sys->p_notify != ((void*)0) )
    {
        IDirectSoundNotify_Release( sys->p_notify );
        sys->p_notify = ((void*)0);
    }
    if( sys->p_dsbuffer != ((void*)0) )
    {
        IDirectSoundBuffer_Release( sys->p_dsbuffer );
        sys->p_dsbuffer = ((void*)0);
    }
    IDirectSound_Release( sys->p_dsobject );
    sys->p_dsobject = ((void*)0);
    return hr;
}
