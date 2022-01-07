
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ i_cat; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_13__ {int (* fptr_MFCreateMemoryBuffer ) (scalar_t__,int **) ;int (* fptr_MFCreateAlignedMemoryBuffer ) (scalar_t__,scalar_t__,int **) ;int (* fptr_MFCreateSample ) (int **) ;} ;
struct TYPE_11__ {int mft; TYPE_5__ mf_handle; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_12__ {int dwFlags; scalar_t__ cbSize; scalar_t__ cbAlignment; } ;
typedef TYPE_4__ MFT_OUTPUT_STREAM_INFO ;
typedef TYPE_5__ MFHandle ;
typedef int IMFSample ;
typedef int IMFMediaBuffer ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ FAILED (int ) ;
 int IMFSample_AddBuffer (int *,int *) ;
 int IMFSample_Release (int *) ;
 int IMFTransform_GetOutputStreamInfo (int ,scalar_t__,TYPE_4__*) ;
 int MFT_OUTPUT_STREAM_CAN_PROVIDE_SAMPLES ;
 scalar_t__ MFT_OUTPUT_STREAM_FIXED_SAMPLE_SIZE ;
 int MFT_OUTPUT_STREAM_PROVIDES_SAMPLES ;
 scalar_t__ MFT_OUTPUT_STREAM_SINGLE_SAMPLE_PER_BUFFER ;
 scalar_t__ MFT_OUTPUT_STREAM_WHOLE_SAMPLES ;
 scalar_t__ VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_2__*,char*) ;
 int stub1 (int **) ;
 int stub2 (scalar_t__,scalar_t__,int **) ;
 int stub3 (scalar_t__,int **) ;

__attribute__((used)) static int AllocateOutputSample(decoder_t *p_dec, DWORD stream_id, IMFSample **result)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    MFHandle *mf = &p_sys->mf_handle;
    HRESULT hr;

    *result = ((void*)0);

    IMFSample *output_sample = ((void*)0);

    MFT_OUTPUT_STREAM_INFO output_info;
    hr = IMFTransform_GetOutputStreamInfo(p_sys->mft, stream_id, &output_info);
    if (FAILED(hr))
        goto error;

    if (output_info.dwFlags & (MFT_OUTPUT_STREAM_PROVIDES_SAMPLES | MFT_OUTPUT_STREAM_CAN_PROVIDE_SAMPLES))
    {

        return VLC_SUCCESS;
    }

    DWORD expected_flags = 0;
    if (p_dec->fmt_in.i_cat == VIDEO_ES)
        expected_flags |= MFT_OUTPUT_STREAM_WHOLE_SAMPLES
                        | MFT_OUTPUT_STREAM_SINGLE_SAMPLE_PER_BUFFER
                        | MFT_OUTPUT_STREAM_FIXED_SAMPLE_SIZE;
    if ((output_info.dwFlags & expected_flags) != expected_flags)
        goto error;

    hr = mf->fptr_MFCreateSample(&output_sample);
    if (FAILED(hr))
        goto error;

    IMFMediaBuffer *output_media_buffer = ((void*)0);
    DWORD allocation_size = output_info.cbSize;
    DWORD alignment = output_info.cbAlignment;
    if (alignment > 0)
        hr = mf->fptr_MFCreateAlignedMemoryBuffer(allocation_size, alignment - 1, &output_media_buffer);
    else
        hr = mf->fptr_MFCreateMemoryBuffer(allocation_size, &output_media_buffer);
    if (FAILED(hr))
        goto error;

    hr = IMFSample_AddBuffer(output_sample, output_media_buffer);
    if (FAILED(hr))
        goto error;

    *result = output_sample;

    return VLC_SUCCESS;

error:
    msg_Err(p_dec, "Error in AllocateOutputSample()");
    if (output_sample)
        IMFSample_Release(output_sample);
    return VLC_EGENERIC;
}
