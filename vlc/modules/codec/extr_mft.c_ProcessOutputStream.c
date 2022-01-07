
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef void* vlc_tick_t ;
struct TYPE_30__ {int b_progressive; void* date; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_29__ {scalar_t__ i_cat; } ;
struct TYPE_27__ {int i_bitspersample; int i_channels; } ;
struct TYPE_28__ {TYPE_1__ audio; } ;
struct TYPE_31__ {TYPE_3__ fmt_in; TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_32__ {int * output_sample; scalar_t__ output_type; int output_stream_id; int mft; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_33__ {int i_buffer; int p_buffer; void* i_pts; } ;
typedef TYPE_7__ block_t ;
typedef int UINT32 ;
struct TYPE_34__ {int member_0; int * pSample; scalar_t__ pEvents; int * member_3; int member_2; int * member_1; } ;
typedef TYPE_8__ MFT_OUTPUT_DATA_BUFFER ;
typedef int LONGLONG ;
typedef int IMFSample ;
typedef int IMFMediaBuffer ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ AllocateOutputSample (TYPE_5__*,int ,int **) ;
 int CopyPackedBufferToPicture (TYPE_4__*,int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IMFCollection_Release (scalar_t__) ;
 scalar_t__ IMFMediaBuffer_Lock (int *,int **,int *,int *) ;
 scalar_t__ IMFMediaBuffer_SetCurrentLength (int *,int ) ;
 scalar_t__ IMFMediaBuffer_Unlock (int *) ;
 int IMFMediaType_Release (scalar_t__) ;
 scalar_t__ IMFSample_GetBufferByIndex (int *,int ,int **) ;
 scalar_t__ IMFSample_GetSampleTime (int *,int *) ;
 scalar_t__ IMFSample_GetTotalLength (int *,int*) ;
 scalar_t__ IMFSample_GetUINT32 (int *,int *,int*) ;
 int IMFSample_Release (int *) ;
 scalar_t__ IMFTransform_ProcessOutput (int ,int ,int,TYPE_8__*,int*) ;
 int MFSampleExtension_Interlaced ;
 scalar_t__ MF_E_TRANSFORM_NEED_MORE_INPUT ;
 scalar_t__ MF_E_TRANSFORM_STREAM_CHANGE ;
 scalar_t__ MF_E_TRANSFORM_TYPE_NOT_SET ;
 scalar_t__ S_OK ;
 scalar_t__ SetOutputType (TYPE_5__*,int ,scalar_t__*) ;
 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 void* VLC_TICK_FROM_MSFTIME (int ) ;
 int block_Release (TYPE_7__*) ;
 TYPE_7__* decoder_NewAudioBuffer (TYPE_5__*,int) ;
 TYPE_4__* decoder_NewPicture (TYPE_5__*) ;
 int decoder_QueueAudio (TYPE_5__*,TYPE_7__*) ;
 int decoder_QueueVideo (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ decoder_UpdateAudioFormat (TYPE_5__*) ;
 scalar_t__ decoder_UpdateVideoFormat (TYPE_5__*) ;
 int memcpy (int ,int *,int) ;
 int msg_Err (TYPE_5__*,char*,...) ;
 int picture_Release (TYPE_4__*) ;

__attribute__((used)) static int ProcessOutputStream(decoder_t *p_dec, DWORD stream_id)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;
    picture_t *picture = ((void*)0);
    block_t *aout_buffer = ((void*)0);

    DWORD output_status = 0;
    MFT_OUTPUT_DATA_BUFFER output_buffer = { stream_id, p_sys->output_sample, 0, ((void*)0) };
    hr = IMFTransform_ProcessOutput(p_sys->mft, 0, 1, &output_buffer, &output_status);
    if (output_buffer.pEvents)
        IMFCollection_Release(output_buffer.pEvents);

    IMFSample *output_sample = output_buffer.pSample;

    if (hr == S_OK)
    {
        if (!output_sample)
            return VLC_SUCCESS;

        LONGLONG sample_time;
        hr = IMFSample_GetSampleTime(output_sample, &sample_time);
        if (FAILED(hr))
            goto error;

        vlc_tick_t samp_time = VLC_TICK_FROM_MSFTIME(sample_time);

        DWORD total_length = 0;
        hr = IMFSample_GetTotalLength(output_sample, &total_length);
        if (FAILED(hr))
            goto error;

        if (p_dec->fmt_in.i_cat == VIDEO_ES)
        {
            if (decoder_UpdateVideoFormat(p_dec))
                return VLC_SUCCESS;
            picture = decoder_NewPicture(p_dec);
            if (!picture)
                return VLC_SUCCESS;

            UINT32 interlaced = 0;
            hr = IMFSample_GetUINT32(output_sample, &MFSampleExtension_Interlaced, &interlaced);
            picture->b_progressive = !interlaced;

            picture->date = samp_time;
        }
        else
        {
            if (decoder_UpdateAudioFormat(p_dec))
                goto error;
            if (p_dec->fmt_out.audio.i_bitspersample == 0 || p_dec->fmt_out.audio.i_channels == 0)
                goto error;
            int samples = total_length / (p_dec->fmt_out.audio.i_bitspersample * p_dec->fmt_out.audio.i_channels / 8);
            aout_buffer = decoder_NewAudioBuffer(p_dec, samples);
            if (!aout_buffer)
                return VLC_SUCCESS;
            if (aout_buffer->i_buffer < total_length)
                goto error;

            aout_buffer->i_pts = samp_time;
        }

        IMFMediaBuffer *output_media_buffer = ((void*)0);
        hr = IMFSample_GetBufferByIndex(output_sample, 0, &output_media_buffer);

        BYTE *buffer_start;
        hr = IMFMediaBuffer_Lock(output_media_buffer, &buffer_start, ((void*)0), ((void*)0));
        if (FAILED(hr))
            goto error;

        if (p_dec->fmt_in.i_cat == VIDEO_ES)
            CopyPackedBufferToPicture(picture, buffer_start);
        else
            memcpy(aout_buffer->p_buffer, buffer_start, total_length);

        hr = IMFMediaBuffer_Unlock(output_media_buffer);
        IMFSample_Release(output_media_buffer);
        if (FAILED(hr))
            goto error;

        if (p_sys->output_sample)
        {

            hr = IMFMediaBuffer_SetCurrentLength(output_media_buffer, 0);
            if (FAILED(hr))
                goto error;
        }
        else
        {

            IMFSample_Release(output_sample);
        }
    }
    else if (hr == MF_E_TRANSFORM_STREAM_CHANGE || hr == MF_E_TRANSFORM_TYPE_NOT_SET)
    {
        if (p_sys->output_type)
            IMFMediaType_Release(p_sys->output_type);
        if (SetOutputType(p_dec, p_sys->output_stream_id, &p_sys->output_type))
            goto error;


        if (p_sys->output_sample)
            IMFSample_Release(p_sys->output_sample);
        p_sys->output_sample = ((void*)0);
        if (AllocateOutputSample(p_dec, 0, &p_sys->output_sample))
            goto error;
        return VLC_SUCCESS;
    }
    else if (hr == MF_E_TRANSFORM_NEED_MORE_INPUT)
    {
        return VLC_SUCCESS;
    }
    else
    {
        msg_Err(p_dec, "Unexpected error in IMFTransform::ProcessOutput: %#lx",
                hr);
        goto error;
    }

    if (p_dec->fmt_in.i_cat == VIDEO_ES)
        decoder_QueueVideo(p_dec, picture);
    else
        decoder_QueueAudio(p_dec, aout_buffer);

    return VLC_SUCCESS;

error:
    msg_Err(p_dec, "Error in ProcessOutputStream()");
    if (picture)
        picture_Release(picture);
    if (aout_buffer)
        block_Release(aout_buffer);
    return VLC_EGENERIC;
}
