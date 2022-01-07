
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int es_out_id_t ;
struct TYPE_10__ {int i_bitspersample; int i_channels; int i_rate; int i_format; } ;
struct TYPE_8__ {int i_bitrate; TYPE_3__ audio; int i_codec; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_9__ {int out; } ;
typedef TYPE_2__ demux_t ;
typedef int WAVEFORMATEX ;
typedef int REFERENCE_TIME ;
typedef int IAudioClient ;
typedef int HRESULT ;
typedef int DWORD ;


 int AUDCLNT_SHAREMODE_SHARED ;
 int AUDCLNT_STREAMFLAGS_EVENTCALLBACK ;
 int AUDCLNT_STREAMFLAGS_LOOPBACK ;
 int AUDIO_ES ;
 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int IAudioClient_GetMixFormat (int *,int **) ;
 int IAudioClient_Initialize (int *,int ,int ,int,int ,int *,int *) ;
 int MSFTIME_FROM_VLC_TICK (int ) ;
 int es_format_Init (TYPE_1__*,int ,int ) ;
 int * es_out_Add (int ,TYPE_1__*) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 scalar_t__ vlc_FromWave (int *,TYPE_3__*) ;

__attribute__((used)) static es_out_id_t *CreateES(demux_t *demux, IAudioClient *client, bool loop,
                             vlc_tick_t caching, size_t *restrict frame_size)
{
    es_format_t fmt;
    WAVEFORMATEX *pwf;
    HRESULT hr;

    hr = IAudioClient_GetMixFormat(client, &pwf);
    if (FAILED(hr))
    {
        msg_Err(demux, "cannot get mix format (error 0x%lX)", hr);
        return ((void*)0);
    }

    es_format_Init(&fmt, AUDIO_ES, 0);
    if (vlc_FromWave(pwf, &fmt.audio))
    {
        msg_Err(demux, "unsupported mix format");
        CoTaskMemFree(pwf);
        return ((void*)0);
    }

    fmt.i_codec = fmt.audio.i_format;
    fmt.i_bitrate = fmt.audio.i_bitspersample * fmt.audio.i_channels
                                              * fmt.audio.i_rate;
    *frame_size = fmt.audio.i_bitspersample * fmt.audio.i_channels / 8;

    DWORD flags = AUDCLNT_STREAMFLAGS_EVENTCALLBACK;
    if (loop)
        flags |= AUDCLNT_STREAMFLAGS_LOOPBACK;


    REFERENCE_TIME bufsize = MSFTIME_FROM_VLC_TICK( caching ) * 3;

    hr = IAudioClient_Initialize(client, AUDCLNT_SHAREMODE_SHARED, flags,
                                 bufsize, 0, pwf, ((void*)0));
    CoTaskMemFree(pwf);
    if (FAILED(hr))
    {
        msg_Err(demux, "cannot initialize audio client (error 0x%lX)", hr);
        return ((void*)0);
    }
    return es_out_Add(demux->out, &fmt);
}
