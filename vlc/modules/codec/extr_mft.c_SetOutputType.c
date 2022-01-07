
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_14__ {int i_bitspersample; int i_channels; int i_rate; int i_physical_channels; } ;
struct TYPE_19__ {int orientation; } ;
struct TYPE_15__ {TYPE_2__ audio; scalar_t__ i_codec; TYPE_7__ video; } ;
struct TYPE_13__ {scalar_t__ i_cat; TYPE_2__ audio; int video; } ;
struct TYPE_16__ {TYPE_3__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_17__ {int mft; } ;
typedef TYPE_5__ decoder_sys_t ;
typedef int UINT32 ;
struct TYPE_18__ {int Data1; } ;
typedef int IMFMediaType ;
typedef scalar_t__ HRESULT ;
typedef TYPE_6__ GUID ;
typedef int DWORD ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ GUIDToFormat (int ,TYPE_6__*) ;
 scalar_t__ IMFMediaType_GetGUID (int *,int *,TYPE_6__*) ;
 scalar_t__ IMFMediaType_GetUINT32 (int *,int *,int*) ;
 int IMFMediaType_Release (int *) ;
 scalar_t__ IMFTransform_GetOutputAvailableType (int ,int ,int,int **) ;
 scalar_t__ IMFTransform_SetOutputType (int ,int ,int *,int ) ;
 scalar_t__ IsEqualGUID (TYPE_6__*,int *) ;
 int MFAudioFormat_Float ;
 int MFVideoFormat_I420 ;
 int MFVideoFormat_YV12 ;
 scalar_t__ MF_E_NO_MORE_TYPES ;
 scalar_t__ MF_E_TRANSFORM_TYPE_NOT_SET ;
 int MF_MT_AUDIO_BITS_PER_SAMPLE ;
 int MF_MT_AUDIO_NUM_CHANNELS ;
 int MF_MT_AUDIO_SAMPLES_PER_SECOND ;
 int MF_MT_SUBTYPE ;
 int ORIENT_BOTTOM_LEFT ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int d3d_format_table ;
 int msg_Err (TYPE_4__*,char*) ;
 int * pi_channels_maps ;
 int video_format_Copy (TYPE_7__*,int *) ;
 scalar_t__ vlc_fourcc_GetCodec (scalar_t__,int ) ;
 scalar_t__ vlc_fourcc_GetCodecAudio (scalar_t__,int) ;
 int wf_tag_to_fourcc (int ,scalar_t__*,int *) ;

__attribute__((used)) static int SetOutputType(decoder_t *p_dec, DWORD stream_id, IMFMediaType **result)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    *result = ((void*)0);

    IMFMediaType *output_media_type = ((void*)0);






    int output_type_index = -1;
    bool found = 0;
    for (int i = 0; !found; ++i)
    {
        hr = IMFTransform_GetOutputAvailableType(p_sys->mft, stream_id, i, &output_media_type);
        if (hr == MF_E_NO_MORE_TYPES)
            break;
        else if (hr == MF_E_TRANSFORM_TYPE_NOT_SET)
        {

            return VLC_SUCCESS;
        }
        else if (FAILED(hr))
            goto error;

        GUID subtype;
        hr = IMFMediaType_GetGUID(output_media_type, &MF_MT_SUBTYPE, &subtype);
        if (FAILED(hr))
            goto error;

        if (p_dec->fmt_in.i_cat == VIDEO_ES)
        {
            if (IsEqualGUID(&subtype, &MFVideoFormat_YV12) || IsEqualGUID(&subtype, &MFVideoFormat_I420))
                found = 1;


            else if(output_type_index < 0 && GUIDToFormat(d3d_format_table, &subtype) > 0)
                    output_type_index = i;
        }
        else
        {
            UINT32 bits_per_sample;
            hr = IMFMediaType_GetUINT32(output_media_type, &MF_MT_AUDIO_BITS_PER_SAMPLE, &bits_per_sample);
            if (FAILED(hr))
                continue;
            if (bits_per_sample == 32 && IsEqualGUID(&subtype, &MFAudioFormat_Float))
                found = 1;
        }

        if (found)
            output_type_index = i;

        IMFMediaType_Release(output_media_type);
        output_media_type = ((void*)0);
    }




    if(output_type_index < 0)


        output_type_index = 0;

    hr = IMFTransform_GetOutputAvailableType(p_sys->mft, stream_id, output_type_index, &output_media_type);
    if (FAILED(hr))
        goto error;

    hr = IMFTransform_SetOutputType(p_sys->mft, stream_id, output_media_type, 0);
    if (FAILED(hr))
        goto error;

    GUID subtype;
    hr = IMFMediaType_GetGUID(output_media_type, &MF_MT_SUBTYPE, &subtype);
    if (FAILED(hr))
        goto error;

    if (p_dec->fmt_in.i_cat == VIDEO_ES)
    {
        video_format_Copy( &p_dec->fmt_out.video, &p_dec->fmt_in.video );


        vlc_fourcc_t fcc = GUIDToFormat(d3d_format_table, &subtype);
        if(fcc) {

            p_dec->fmt_out.video.orientation = ORIENT_BOTTOM_LEFT;
        } else {
            fcc = vlc_fourcc_GetCodec(p_dec->fmt_in.i_cat, subtype.Data1);
        }

        p_dec->fmt_out.i_codec = fcc;
    }
    else
    {
        p_dec->fmt_out.audio = p_dec->fmt_in.audio;

        UINT32 bitspersample = 0;
        hr = IMFMediaType_GetUINT32(output_media_type, &MF_MT_AUDIO_BITS_PER_SAMPLE, &bitspersample);
        if (SUCCEEDED(hr) && bitspersample)
            p_dec->fmt_out.audio.i_bitspersample = bitspersample;

        UINT32 channels = 0;
        hr = IMFMediaType_GetUINT32(output_media_type, &MF_MT_AUDIO_NUM_CHANNELS, &channels);
        if (SUCCEEDED(hr) && channels)
            p_dec->fmt_out.audio.i_channels = channels;

        UINT32 rate = 0;
        hr = IMFMediaType_GetUINT32(output_media_type, &MF_MT_AUDIO_SAMPLES_PER_SECOND, &rate);
        if (SUCCEEDED(hr) && rate)
            p_dec->fmt_out.audio.i_rate = rate;

        vlc_fourcc_t fourcc;
        wf_tag_to_fourcc(subtype.Data1, &fourcc, ((void*)0));
        p_dec->fmt_out.i_codec = vlc_fourcc_GetCodecAudio(fourcc, p_dec->fmt_out.audio.i_bitspersample);

        p_dec->fmt_out.audio.i_physical_channels = pi_channels_maps[p_dec->fmt_out.audio.i_channels];
    }

    *result = output_media_type;

    return VLC_SUCCESS;

error:
    msg_Err(p_dec, "Error in SetOutputType()");
    if (output_media_type)
        IMFMediaType_Release(output_media_type);
    return VLC_EGENERIC;
}
