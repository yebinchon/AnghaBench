
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int * mft; int * output_type; int * output_sample; int * input_type; int * event_generator; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int IMFMediaBuffer ;
typedef int HRESULT ;


 int IMFMediaEventGenerator_Release (int *) ;
 int IMFMediaType_Release (int *) ;
 int IMFSample_GetBufferByIndex (int *,int ,int **) ;
 int IMFSample_Release (int *) ;
 int IMFTransform_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static void DestroyMFT(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if (p_sys->event_generator)
        IMFMediaEventGenerator_Release(p_sys->event_generator);
    if (p_sys->input_type)
        IMFMediaType_Release(p_sys->input_type);
    if (p_sys->output_sample)
    {
        IMFMediaBuffer *output_media_buffer = ((void*)0);
        HRESULT hr = IMFSample_GetBufferByIndex(p_sys->output_sample, 0, &output_media_buffer);
        if (SUCCEEDED(hr))
            IMFSample_Release(output_media_buffer);
        IMFSample_Release(p_sys->output_sample);
    }
    if (p_sys->output_type)
        IMFMediaType_Release(p_sys->output_type);
    if (p_sys->mft)
        IMFTransform_Release(p_sys->mft);

    p_sys->event_generator = ((void*)0);
    p_sys->input_type = ((void*)0);
    p_sys->output_sample = ((void*)0);
    p_sys->output_type = ((void*)0);
    p_sys->mft = ((void*)0);
}
