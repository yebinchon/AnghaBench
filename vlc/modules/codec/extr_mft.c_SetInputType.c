
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int i_rate; int i_channels; int i_bitspersample; int i_blockalign; } ;
struct TYPE_9__ {int i_width; int i_height; int i_frame_rate; int i_frame_rate_base; } ;
struct TYPE_11__ {scalar_t__ i_cat; int i_bitrate; scalar_t__ i_extra; scalar_t__ p_extra; TYPE_2__ audio; TYPE_1__ video; } ;
struct TYPE_12__ {TYPE_3__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_13__ {int mft; TYPE_8__* subtype; } ;
typedef TYPE_5__ decoder_sys_t ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_14__ {int Data1; } ;
typedef int IMFMediaType ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef int DWORD ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IMFMediaType_GetBlobSize (int *,int *,int *) ;
 scalar_t__ IMFMediaType_GetGUID (int *,int *,int *) ;
 int IMFMediaType_Release (int *) ;
 scalar_t__ IMFMediaType_SetBlob (int *,int *,int const*,scalar_t__) ;
 scalar_t__ IMFMediaType_SetUINT32 (int *,int *,int) ;
 scalar_t__ IMFMediaType_SetUINT64 (int *,int *,int) ;
 scalar_t__ IMFTransform_GetInputAvailableType (int ,int ,int,int **) ;
 scalar_t__ IMFTransform_SetInputType (int ,int ,int *,int ) ;
 scalar_t__ IsEqualGUID (int *,TYPE_8__*) ;
 scalar_t__ MF_E_ATTRIBUTENOTFOUND ;
 scalar_t__ MF_E_NO_MORE_TYPES ;
 scalar_t__ MF_E_TRANSFORM_TYPE_NOT_SET ;
 int MF_MT_AUDIO_AVG_BYTES_PER_SECOND ;
 int MF_MT_AUDIO_BITS_PER_SAMPLE ;
 int MF_MT_AUDIO_BLOCK_ALIGNMENT ;
 int MF_MT_AUDIO_NUM_CHANNELS ;
 int MF_MT_AUDIO_SAMPLES_PER_SECOND ;
 int MF_MT_FRAME_RATE ;
 int MF_MT_FRAME_SIZE ;
 int MF_MT_ORIGINAL_WAVE_FORMAT_TAG ;
 int MF_MT_SUBTYPE ;
 int MF_MT_USER_DATA ;
 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_4__*,char*) ;

__attribute__((used)) static int SetInputType(decoder_t *p_dec, DWORD stream_id, IMFMediaType **result)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    *result = ((void*)0);

    IMFMediaType *input_media_type = ((void*)0);


    int input_type_index = 0;
    bool found = 0;
    for (int i = 0; !found; ++i)
    {
        hr = IMFTransform_GetInputAvailableType(p_sys->mft, stream_id, i, &input_media_type);
        if (hr == MF_E_NO_MORE_TYPES)
            break;
        else if (hr == MF_E_TRANSFORM_TYPE_NOT_SET)
        {

            return VLC_SUCCESS;
        }
        else if (FAILED(hr))
            goto error;

        GUID subtype;
        hr = IMFMediaType_GetGUID(input_media_type, &MF_MT_SUBTYPE, &subtype);
        if (FAILED(hr))
            goto error;

        if (IsEqualGUID(&subtype, p_sys->subtype))
            found = 1;

        if (found)
            input_type_index = i;

        IMFMediaType_Release(input_media_type);
        input_media_type = ((void*)0);
    }
    if (!found)
        goto error;

    hr = IMFTransform_GetInputAvailableType(p_sys->mft, stream_id, input_type_index, &input_media_type);
    if (FAILED(hr))
        goto error;

    if (p_dec->fmt_in.i_cat == VIDEO_ES)
    {
        UINT64 width = p_dec->fmt_in.video.i_width;
        UINT64 height = p_dec->fmt_in.video.i_height;
        UINT64 frame_size = (width << 32) | height;
        hr = IMFMediaType_SetUINT64(input_media_type, &MF_MT_FRAME_SIZE, frame_size);
        if (FAILED(hr))
            goto error;


        UINT64 frame_ratio_num = p_dec->fmt_in.video.i_frame_rate;
        UINT64 frame_ratio_dem = p_dec->fmt_in.video.i_frame_rate_base;
        if(frame_ratio_num && frame_ratio_dem) {
            UINT64 frame_rate = (frame_ratio_num << 32) | frame_ratio_dem;
            hr = IMFMediaType_SetUINT64(input_media_type, &MF_MT_FRAME_RATE, frame_rate);
            if(FAILED(hr))
                goto error;
        }
    }
    else
    {
        hr = IMFMediaType_SetUINT32(input_media_type, &MF_MT_ORIGINAL_WAVE_FORMAT_TAG, p_sys->subtype->Data1);
        if (FAILED(hr))
            goto error;
        if (p_dec->fmt_in.audio.i_rate)
        {
            hr = IMFMediaType_SetUINT32(input_media_type, &MF_MT_AUDIO_SAMPLES_PER_SECOND, p_dec->fmt_in.audio.i_rate);
            if (FAILED(hr))
                goto error;
        }
        if (p_dec->fmt_in.audio.i_channels)
        {
            hr = IMFMediaType_SetUINT32(input_media_type, &MF_MT_AUDIO_NUM_CHANNELS, p_dec->fmt_in.audio.i_channels);
            if (FAILED(hr))
                goto error;
        }
        if (p_dec->fmt_in.audio.i_bitspersample)
        {
            hr = IMFMediaType_SetUINT32(input_media_type, &MF_MT_AUDIO_BITS_PER_SAMPLE, p_dec->fmt_in.audio.i_bitspersample);
            if (FAILED(hr))
                goto error;
        }
        if (p_dec->fmt_in.audio.i_blockalign)
        {
            hr = IMFMediaType_SetUINT32(input_media_type, &MF_MT_AUDIO_BLOCK_ALIGNMENT, p_dec->fmt_in.audio.i_blockalign);
            if (FAILED(hr))
                goto error;
        }
        if (p_dec->fmt_in.i_bitrate)
        {
            hr = IMFMediaType_SetUINT32(input_media_type, &MF_MT_AUDIO_AVG_BYTES_PER_SECOND, p_dec->fmt_in.i_bitrate / 8);
            if (FAILED(hr))
                goto error;
        }
    }

    if (p_dec->fmt_in.i_extra > 0)
    {
        UINT32 blob_size = 0;
        hr = IMFMediaType_GetBlobSize(input_media_type, &MF_MT_USER_DATA, &blob_size);




        if (hr == MF_E_ATTRIBUTENOTFOUND)
        {
            hr = IMFMediaType_SetBlob(input_media_type, &MF_MT_USER_DATA,
                                      (const UINT8*)p_dec->fmt_in.p_extra, p_dec->fmt_in.i_extra);
            if (FAILED(hr))
                goto error;
        }
    }

    hr = IMFTransform_SetInputType(p_sys->mft, stream_id, input_media_type, 0);
    if (FAILED(hr))
        goto error;

    *result = input_media_type;

    return VLC_SUCCESS;

error:
    msg_Err(p_dec, "Error in SetInputType()");
    if (input_media_type)
        IMFMediaType_Release(input_media_type);
    return VLC_EGENERIC;
}
