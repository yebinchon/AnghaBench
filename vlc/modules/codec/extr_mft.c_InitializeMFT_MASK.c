#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {scalar_t__ i_codec; size_t i_extra; int /*<<< orphan*/ * p_extra; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_11__ {int is_async; int /*<<< orphan*/  nal_length_size; int /*<<< orphan*/  mft; int /*<<< orphan*/  input_type; scalar_t__ input_stream_id; int /*<<< orphan*/  output_type; scalar_t__ output_stream_id; int /*<<< orphan*/  event_generator; } ;
typedef  TYPE_3__ decoder_sys_t ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  IMFAttributes ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CODECAPI_AVLowLatencyMode ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IMFMediaEventGenerator ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,scalar_t__*,int,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  MFT_MESSAGE_NOTIFY_BEGIN_STREAMING ; 
 int /*<<< orphan*/  MFT_MESSAGE_NOTIFY_START_OF_STREAM ; 
 scalar_t__ MF_E_ATTRIBUTENOTFOUND ; 
 int /*<<< orphan*/  MF_TRANSFORM_ASYNC ; 
 int /*<<< orphan*/  MF_TRANSFORM_ASYNC_UNLOCK ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_CODEC_H264 ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,size_t,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC16(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    IMFAttributes *attributes = NULL;
    hr = FUNC4(p_sys->mft, &attributes);
    if (hr != E_NOTIMPL && FUNC1(hr))
        goto error;
    if (FUNC9(hr))
    {
        UINT32 is_async = false;
        hr = FUNC2(attributes, &MF_TRANSFORM_ASYNC, &is_async);
        if (hr != MF_E_ATTRIBUTENOTFOUND && FUNC1(hr))
            goto error;
        p_sys->is_async = is_async;
        if (p_sys->is_async)
        {
            hr = FUNC3(attributes, &MF_TRANSFORM_ASYNC_UNLOCK, true);
            if (FUNC1(hr))
                goto error;
            hr = FUNC8(p_sys->mft, &IID_IMFMediaEventGenerator, (void**)&p_sys->event_generator);
            if (FUNC1(hr))
                goto error;
        }
    }

    DWORD input_streams_count;
    DWORD output_streams_count;
    hr = FUNC5(p_sys->mft, &input_streams_count, &output_streams_count);
    if (FUNC1(hr))
        goto error;
    if (input_streams_count != 1 || output_streams_count != 1)
    {
        FUNC15(p_dec, "MFT decoder should have 1 input stream and 1 output stream.");
        goto error;
    }

    hr = FUNC6(p_sys->mft, 1, &p_sys->input_stream_id, 1, &p_sys->output_stream_id);
    if (hr == E_NOTIMPL)
    {
        /*
         * This is not an error, it happens if:
         * - there is a fixed number of streams.
         * AND
         * - streams are numbered consecutively from 0 to N-1.
         */
        p_sys->input_stream_id = 0;
        p_sys->output_stream_id = 0;
    }
    else if (FUNC1(hr))
        goto error;

    if (FUNC10(p_dec, p_sys->input_stream_id, &p_sys->input_type))
        goto error;

    if (FUNC11(p_dec, p_sys->output_stream_id, &p_sys->output_type))
        goto error;

    /*
     * The input type was not set by the previous call to
     * SetInputType, try again after setting the output type.
     */
    if (!p_sys->input_type)
        if (FUNC10(p_dec, p_sys->input_stream_id, &p_sys->input_type) || !p_sys->input_type)
            goto error;

    /* This call can be a no-op for some MFT decoders, but it can potentially reduce starting time. */
    hr = FUNC7(p_sys->mft, MFT_MESSAGE_NOTIFY_BEGIN_STREAMING, (ULONG_PTR)0);
    if (FUNC1(hr))
        goto error;

    /* This event is required for asynchronous MFTs, optional otherwise. */
    hr = FUNC7(p_sys->mft, MFT_MESSAGE_NOTIFY_START_OF_STREAM, (ULONG_PTR)0);
    if (FUNC1(hr))
        goto error;

    if (p_dec->fmt_in.i_codec == VLC_CODEC_H264)
    {
        /* It's not an error if the following call fails. */
        FUNC3(attributes, &CODECAPI_AVLowLatencyMode, true);

        if (p_dec->fmt_in.i_extra)
        {
            if (FUNC14((uint8_t*)p_dec->fmt_in.p_extra, p_dec->fmt_in.i_extra))
            {
                size_t i_buf;
                uint8_t *buf = FUNC13(p_dec->fmt_in.p_extra,
                                                       p_dec->fmt_in.i_extra,
                                                      &i_buf, &p_sys->nal_length_size);
                if(buf)
                {
                    FUNC12(p_dec->fmt_in.p_extra);
                    p_dec->fmt_in.p_extra = buf;
                    p_dec->fmt_in.i_extra = i_buf;
                }
            }
        }
    }
    return VLC_SUCCESS;

error:
    FUNC15(p_dec, "Error in InitializeMFT()");
    FUNC0(p_dec);
    return VLC_EGENERIC;
}