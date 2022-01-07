
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ i_codec; size_t i_extra; int * p_extra; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_11__ {int is_async; int nal_length_size; int mft; int input_type; scalar_t__ input_stream_id; int output_type; scalar_t__ output_stream_id; int event_generator; } ;
typedef TYPE_3__ decoder_sys_t ;
typedef int ULONG_PTR ;
typedef int UINT32 ;
typedef int IMFAttributes ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int CODECAPI_AVLowLatencyMode ;
 int DestroyMFT (TYPE_2__*) ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IMFMediaEventGenerator ;
 scalar_t__ IMFAttributes_GetUINT32 (int *,int *,int*) ;
 scalar_t__ IMFAttributes_SetUINT32 (int *,int *,int) ;
 scalar_t__ IMFTransform_GetAttributes (int ,int **) ;
 scalar_t__ IMFTransform_GetStreamCount (int ,int*,int*) ;
 scalar_t__ IMFTransform_GetStreamIDs (int ,int,scalar_t__*,int,scalar_t__*) ;
 scalar_t__ IMFTransform_ProcessMessage (int ,int ,int ) ;
 scalar_t__ IMFTransform_QueryInterface (int ,int *,void**) ;
 int MFT_MESSAGE_NOTIFY_BEGIN_STREAMING ;
 int MFT_MESSAGE_NOTIFY_START_OF_STREAM ;
 scalar_t__ MF_E_ATTRIBUTENOTFOUND ;
 int MF_TRANSFORM_ASYNC ;
 int MF_TRANSFORM_ASYNC_UNLOCK ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ SetInputType (TYPE_2__*,scalar_t__,int *) ;
 scalar_t__ SetOutputType (TYPE_2__*,scalar_t__,int *) ;
 scalar_t__ VLC_CODEC_H264 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (int *) ;
 int * h264_avcC_to_AnnexB_NAL (int *,size_t,size_t*,int *) ;
 scalar_t__ h264_isavcC (int *,size_t) ;
 int msg_Err (TYPE_2__*,char*) ;

__attribute__((used)) static int InitializeMFT(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    IMFAttributes *attributes = ((void*)0);
    hr = IMFTransform_GetAttributes(p_sys->mft, &attributes);
    if (hr != E_NOTIMPL && FAILED(hr))
        goto error;
    if (SUCCEEDED(hr))
    {
        UINT32 is_async = 0;
        hr = IMFAttributes_GetUINT32(attributes, &MF_TRANSFORM_ASYNC, &is_async);
        if (hr != MF_E_ATTRIBUTENOTFOUND && FAILED(hr))
            goto error;
        p_sys->is_async = is_async;
        if (p_sys->is_async)
        {
            hr = IMFAttributes_SetUINT32(attributes, &MF_TRANSFORM_ASYNC_UNLOCK, 1);
            if (FAILED(hr))
                goto error;
            hr = IMFTransform_QueryInterface(p_sys->mft, &IID_IMFMediaEventGenerator, (void**)&p_sys->event_generator);
            if (FAILED(hr))
                goto error;
        }
    }

    DWORD input_streams_count;
    DWORD output_streams_count;
    hr = IMFTransform_GetStreamCount(p_sys->mft, &input_streams_count, &output_streams_count);
    if (FAILED(hr))
        goto error;
    if (input_streams_count != 1 || output_streams_count != 1)
    {
        msg_Err(p_dec, "MFT decoder should have 1 input stream and 1 output stream.");
        goto error;
    }

    hr = IMFTransform_GetStreamIDs(p_sys->mft, 1, &p_sys->input_stream_id, 1, &p_sys->output_stream_id);
    if (hr == E_NOTIMPL)
    {






        p_sys->input_stream_id = 0;
        p_sys->output_stream_id = 0;
    }
    else if (FAILED(hr))
        goto error;

    if (SetInputType(p_dec, p_sys->input_stream_id, &p_sys->input_type))
        goto error;

    if (SetOutputType(p_dec, p_sys->output_stream_id, &p_sys->output_type))
        goto error;





    if (!p_sys->input_type)
        if (SetInputType(p_dec, p_sys->input_stream_id, &p_sys->input_type) || !p_sys->input_type)
            goto error;


    hr = IMFTransform_ProcessMessage(p_sys->mft, MFT_MESSAGE_NOTIFY_BEGIN_STREAMING, (ULONG_PTR)0);
    if (FAILED(hr))
        goto error;


    hr = IMFTransform_ProcessMessage(p_sys->mft, MFT_MESSAGE_NOTIFY_START_OF_STREAM, (ULONG_PTR)0);
    if (FAILED(hr))
        goto error;

    if (p_dec->fmt_in.i_codec == VLC_CODEC_H264)
    {

        IMFAttributes_SetUINT32(attributes, &CODECAPI_AVLowLatencyMode, 1);

        if (p_dec->fmt_in.i_extra)
        {
            if (h264_isavcC((uint8_t*)p_dec->fmt_in.p_extra, p_dec->fmt_in.i_extra))
            {
                size_t i_buf;
                uint8_t *buf = h264_avcC_to_AnnexB_NAL(p_dec->fmt_in.p_extra,
                                                       p_dec->fmt_in.i_extra,
                                                      &i_buf, &p_sys->nal_length_size);
                if(buf)
                {
                    free(p_dec->fmt_in.p_extra);
                    p_dec->fmt_in.p_extra = buf;
                    p_dec->fmt_in.i_extra = i_buf;
                }
            }
        }
    }
    return VLC_SUCCESS;

error:
    msg_Err(p_dec, "Error in InitializeMFT()");
    DestroyMFT(p_dec);
    return VLC_EGENERIC;
}
