
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_11__ {int (* fptr_MFCreateMemoryBuffer ) (int ,int **) ;int (* fptr_MFCreateSample ) (int **) ;} ;
struct TYPE_9__ {int mft; TYPE_4__ mf_handle; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_10__ {int cbSize; } ;
typedef TYPE_3__ MFT_INPUT_STREAM_INFO ;
typedef TYPE_4__ MFHandle ;
typedef int IMFSample ;
typedef int IMFMediaBuffer ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int IMFMediaBuffer_Release (int *) ;
 int IMFSample_AddBuffer (int *,int *) ;
 int IMFSample_Release (int *) ;
 int IMFTransform_GetInputStreamInfo (int ,int ,TYPE_3__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int __MAX (int ,int ) ;
 int msg_Err (TYPE_1__*,char*) ;
 int stub1 (int **) ;
 int stub2 (int ,int **) ;

__attribute__((used)) static int AllocateInputSample(decoder_t *p_dec, DWORD stream_id, IMFSample** result, DWORD size)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    MFHandle *mf = &p_sys->mf_handle;
    HRESULT hr;

    *result = ((void*)0);

    IMFSample *input_sample = ((void*)0);

    MFT_INPUT_STREAM_INFO input_info;
    hr = IMFTransform_GetInputStreamInfo(p_sys->mft, stream_id, &input_info);
    if (FAILED(hr))
        goto error;

    hr = mf->fptr_MFCreateSample(&input_sample);
    if (FAILED(hr))
        goto error;

    IMFMediaBuffer *input_media_buffer = ((void*)0);
    DWORD allocation_size = __MAX(input_info.cbSize, size);
    hr = mf->fptr_MFCreateMemoryBuffer(allocation_size, &input_media_buffer);
    if (FAILED(hr))
        goto error;

    hr = IMFSample_AddBuffer(input_sample, input_media_buffer);
    IMFMediaBuffer_Release(input_media_buffer);
    if (FAILED(hr))
        goto error;

    *result = input_sample;

    return VLC_SUCCESS;

error:
    msg_Err(p_dec, "Error in AllocateInputSample()");
    if (input_sample)
        IMFSample_Release(input_sample);
    if (input_media_buffer)
        IMFMediaBuffer_Release(input_media_buffer);
    return VLC_EGENERIC;
}
