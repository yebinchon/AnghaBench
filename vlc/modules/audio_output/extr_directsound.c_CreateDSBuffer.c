
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_12__ {int i_bytes_per_sample; int format; int i_rate; int i_channel_mask; int * p_notify; int * p_dsbuffer; int chans_to_reorder; int chan_table; int p_dsobject; } ;
typedef TYPE_3__ aout_stream_sys_t ;
struct TYPE_11__ {int wBitsPerSample; int nChannels; int nSamplesPerSec; int nBlockAlign; int nAvgBytesPerSec; int cbSize; int wFormatTag; } ;
struct TYPE_10__ {int wValidBitsPerSample; } ;
struct TYPE_13__ {int dwChannelMask; TYPE_2__ Format; int SubFormat; TYPE_1__ Samples; } ;
typedef TYPE_4__ WAVEFORMATEXTENSIBLE ;
typedef int WAVEFORMATEX ;
struct TYPE_14__ {int dwSize; int dwFlags; int * lpwfxFormat; int dwBufferBytes; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_5__ DSBUFFERDESC ;


 int DSBCAPS_CTRLPOSITIONNOTIFY ;
 int DSBCAPS_CTRLVOLUME ;
 int DSBCAPS_GETCURRENTPOSITION2 ;
 int DSBCAPS_GLOBALFOCUS ;
 int DSBCAPS_LOCHARDWARE ;
 int DS_BUF_SIZE ;
 scalar_t__ DS_OK ;
 scalar_t__ FAILED (scalar_t__) ;
 int FillBuffer (int *,TYPE_3__*,int *) ;
 scalar_t__ IDirectSoundBuffer_QueryInterface (int *,int *,void**) ;
 int IDirectSoundBuffer_Release (int *) ;
 scalar_t__ IDirectSound_CreateSoundBuffer (int ,TYPE_5__*,int **,int *) ;
 int IID_IDirectSoundNotify ;
 int SPEAKER_FRONT_LEFT ;
 int SPEAKER_FRONT_RIGHT ;



 int WAVE_FORMAT_DOLBY_AC3_SPDIF ;
 int WAVE_FORMAT_EXTENSIBLE ;
 int WAVE_FORMAT_IEEE_FLOAT ;
 int WAVE_FORMAT_PCM ;
 int _KSDATAFORMAT_SUBTYPE_DOLBY_AC3_SPDIF ;
 int _KSDATAFORMAT_SUBTYPE_IEEE_FLOAT ;
 int _KSDATAFORMAT_SUBTYPE_PCM ;
 int aout_CheckChannelReorder (int*,int ,int,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*) ;
 int* pi_channels_in ;
 int pi_channels_out ;
 int* pi_vlc_chan_order_wg4 ;

__attribute__((used)) static HRESULT CreateDSBuffer( vlc_object_t *obj, aout_stream_sys_t *sys,
                               int i_format, int i_channels, int i_nb_channels,
                               int i_rate, bool b_probe )
{
    WAVEFORMATEXTENSIBLE waveformat;
    DSBUFFERDESC dsbdesc;
    HRESULT hr;


    waveformat.dwChannelMask = 0;
    for( unsigned i = 0; pi_vlc_chan_order_wg4[i]; i++ )
        if( i_channels & pi_vlc_chan_order_wg4[i] )
            waveformat.dwChannelMask |= pi_channels_in[i];

    switch( i_format )
    {
    case 128:
        i_nb_channels = 2;

        waveformat.dwChannelMask = SPEAKER_FRONT_LEFT | SPEAKER_FRONT_RIGHT;
        waveformat.Format.wBitsPerSample = 16;
        waveformat.Samples.wValidBitsPerSample =
            waveformat.Format.wBitsPerSample;
        waveformat.Format.wFormatTag = WAVE_FORMAT_DOLBY_AC3_SPDIF;
        waveformat.SubFormat = _KSDATAFORMAT_SUBTYPE_DOLBY_AC3_SPDIF;
        break;

    case 130:
        waveformat.Format.wBitsPerSample = sizeof(float) * 8;
        waveformat.Samples.wValidBitsPerSample =
            waveformat.Format.wBitsPerSample;
        waveformat.Format.wFormatTag = WAVE_FORMAT_IEEE_FLOAT;
        waveformat.SubFormat = _KSDATAFORMAT_SUBTYPE_IEEE_FLOAT;
        break;

    case 129:
        waveformat.Format.wBitsPerSample = 16;
        waveformat.Samples.wValidBitsPerSample =
            waveformat.Format.wBitsPerSample;
        waveformat.Format.wFormatTag = WAVE_FORMAT_PCM;
        waveformat.SubFormat = _KSDATAFORMAT_SUBTYPE_PCM;
        break;
    }

    waveformat.Format.nChannels = i_nb_channels;
    waveformat.Format.nSamplesPerSec = i_rate;
    waveformat.Format.nBlockAlign =
        waveformat.Format.wBitsPerSample / 8 * i_nb_channels;
    waveformat.Format.nAvgBytesPerSec =
        waveformat.Format.nSamplesPerSec * waveformat.Format.nBlockAlign;

    sys->i_bytes_per_sample = waveformat.Format.nBlockAlign;
    sys->format = i_format;


    memset(&dsbdesc, 0, sizeof(DSBUFFERDESC));
    dsbdesc.dwSize = sizeof(DSBUFFERDESC);
    dsbdesc.dwFlags = DSBCAPS_GETCURRENTPOSITION2
                    | DSBCAPS_GLOBALFOCUS
                    | DSBCAPS_CTRLVOLUME
                    | DSBCAPS_CTRLPOSITIONNOTIFY;


    if( i_nb_channels <= 2 )
    {
        waveformat.Format.cbSize = 0;
    }
    else
    {
        waveformat.Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
        waveformat.Format.cbSize =
            sizeof(WAVEFORMATEXTENSIBLE) - sizeof(WAVEFORMATEX);


        dsbdesc.dwFlags |= DSBCAPS_LOCHARDWARE;
    }

    dsbdesc.dwBufferBytes = DS_BUF_SIZE;
    dsbdesc.lpwfxFormat = (WAVEFORMATEX *)&waveformat;


    if ( i_format == 128 )
        dsbdesc.dwFlags &= ~DSBCAPS_CTRLVOLUME;

    hr = IDirectSound_CreateSoundBuffer( sys->p_dsobject, &dsbdesc,
                                         &sys->p_dsbuffer, ((void*)0) );
    if( FAILED(hr) )
    {
        if( !(dsbdesc.dwFlags & DSBCAPS_LOCHARDWARE) )
            return hr;


        dsbdesc.dwFlags &= ~DSBCAPS_LOCHARDWARE;
        hr = IDirectSound_CreateSoundBuffer( sys->p_dsobject, &dsbdesc,
                                             &sys->p_dsbuffer, ((void*)0) );
        if( FAILED(hr) )
            return hr;
        if( !b_probe )
            msg_Dbg( obj, "couldn't use hardware sound buffer" );
    }


    if( b_probe )
    {
        IDirectSoundBuffer_Release( sys->p_dsbuffer );
        sys->p_dsbuffer = ((void*)0);
        return DS_OK;
    }

    sys->i_rate = i_rate;
    sys->i_channel_mask = waveformat.dwChannelMask;
    sys->chans_to_reorder =
        aout_CheckChannelReorder( pi_channels_in, pi_channels_out,
                                  waveformat.dwChannelMask, sys->chan_table );
    if( sys->chans_to_reorder )
        msg_Dbg( obj, "channel reordering needed" );

    hr = IDirectSoundBuffer_QueryInterface( sys->p_dsbuffer,
                                            &IID_IDirectSoundNotify,
                                            (void **) &sys->p_notify );
    if( hr != DS_OK )
    {
        msg_Err( obj, "Couldn't query IDirectSoundNotify" );
        sys->p_notify = ((void*)0);
    }

    FillBuffer( obj, sys, ((void*)0) );
    return DS_OK;
}
