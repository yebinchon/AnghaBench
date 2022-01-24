#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  void* vlc_tick_t ;
struct TYPE_30__ {int b_progressive; void* date; } ;
typedef  TYPE_4__ picture_t ;
struct TYPE_29__ {scalar_t__ i_cat; } ;
struct TYPE_27__ {int i_bitspersample; int i_channels; } ;
struct TYPE_28__ {TYPE_1__ audio; } ;
struct TYPE_31__ {TYPE_3__ fmt_in; TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_32__ {int /*<<< orphan*/ * output_sample; scalar_t__ output_type; int /*<<< orphan*/  output_stream_id; int /*<<< orphan*/  mft; } ;
typedef  TYPE_6__ decoder_sys_t ;
struct TYPE_33__ {int i_buffer; int /*<<< orphan*/  p_buffer; void* i_pts; } ;
typedef  TYPE_7__ block_t ;
typedef  int UINT32 ;
struct TYPE_34__ {int member_0; int /*<<< orphan*/ * pSample; scalar_t__ pEvents; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_8__ MFT_OUTPUT_DATA_BUFFER ;
typedef  int /*<<< orphan*/  LONGLONG ;
typedef  int /*<<< orphan*/  IMFSample ;
typedef  int /*<<< orphan*/  IMFMediaBuffer ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_8__*,int*) ; 
 int /*<<< orphan*/  MFSampleExtension_Interlaced ; 
 scalar_t__ MF_E_TRANSFORM_NEED_MORE_INPUT ; 
 scalar_t__ MF_E_TRANSFORM_STREAM_CHANGE ; 
 scalar_t__ MF_E_TRANSFORM_TYPE_NOT_SET ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 TYPE_7__* FUNC17 (TYPE_5__*,int) ; 
 TYPE_4__* FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC21 (TYPE_5__*) ; 
 scalar_t__ FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC26(decoder_t *p_dec, DWORD stream_id)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;
    picture_t *picture = NULL;
    block_t *aout_buffer = NULL;

    DWORD output_status = 0;
    MFT_OUTPUT_DATA_BUFFER output_buffer = { stream_id, p_sys->output_sample, 0, NULL };
    hr = FUNC13(p_sys->mft, 0, 1, &output_buffer, &output_status);
    if (output_buffer.pEvents)
        FUNC3(output_buffer.pEvents);
    /* Use the returned sample since it can be provided by the MFT. */
    IMFSample *output_sample = output_buffer.pSample;

    if (hr == S_OK)
    {
        if (!output_sample)
            return VLC_SUCCESS;

        LONGLONG sample_time;
        hr = FUNC9(output_sample, &sample_time);
        if (FUNC2(hr))
            goto error;
        /* Convert from 100 nanoseconds unit to microseconds. */
        vlc_tick_t samp_time = FUNC15(sample_time);

        DWORD total_length = 0;
        hr = FUNC10(output_sample, &total_length);
        if (FUNC2(hr))
            goto error;

        if (p_dec->fmt_in.i_cat == VIDEO_ES)
        {
            if (FUNC22(p_dec))
                return VLC_SUCCESS;
            picture = FUNC18(p_dec);
            if (!picture)
                return VLC_SUCCESS;

            UINT32 interlaced = false;
            hr = FUNC11(output_sample, &MFSampleExtension_Interlaced, &interlaced);
            picture->b_progressive = !interlaced;

            picture->date = samp_time;
        }
        else
        {
            if (FUNC21(p_dec))
                goto error;
            if (p_dec->fmt_out.audio.i_bitspersample == 0 || p_dec->fmt_out.audio.i_channels == 0)
                goto error;
            int samples = total_length / (p_dec->fmt_out.audio.i_bitspersample * p_dec->fmt_out.audio.i_channels / 8);
            aout_buffer = FUNC17(p_dec, samples);
            if (!aout_buffer)
                return VLC_SUCCESS;
            if (aout_buffer->i_buffer < total_length)
                goto error;

            aout_buffer->i_pts = samp_time;
        }

        IMFMediaBuffer *output_media_buffer = NULL;
        hr = FUNC8(output_sample, 0, &output_media_buffer);

        BYTE *buffer_start;
        hr = FUNC4(output_media_buffer, &buffer_start, NULL, NULL);
        if (FUNC2(hr))
            goto error;

        if (p_dec->fmt_in.i_cat == VIDEO_ES)
            FUNC1(picture, buffer_start);
        else
            FUNC23(aout_buffer->p_buffer, buffer_start, total_length);

        hr = FUNC6(output_media_buffer);
        FUNC12(output_media_buffer);
        if (FUNC2(hr))
            goto error;

        if (p_sys->output_sample)
        {
            /* Sample is not provided by the MFT: clear its content. */
            hr = FUNC5(output_media_buffer, 0);
            if (FUNC2(hr))
                goto error;
        }
        else
        {
            /* Sample is provided by the MFT: decrease refcount. */
            FUNC12(output_sample);
        }
    }
    else if (hr == MF_E_TRANSFORM_STREAM_CHANGE || hr == MF_E_TRANSFORM_TYPE_NOT_SET)
    {
        if (p_sys->output_type)
            FUNC7(p_sys->output_type);
        if (FUNC14(p_dec, p_sys->output_stream_id, &p_sys->output_type))
            goto error;

        /* Reallocate output sample. */
        if (p_sys->output_sample)
            FUNC12(p_sys->output_sample);
        p_sys->output_sample = NULL;
        if (FUNC0(p_dec, 0, &p_sys->output_sample))
            goto error;
        return VLC_SUCCESS;
    }
    else if (hr == MF_E_TRANSFORM_NEED_MORE_INPUT)
    {
        return VLC_SUCCESS;
    }
    else /* An error not listed above occurred */
    {
        FUNC24(p_dec, "Unexpected error in IMFTransform::ProcessOutput: %#lx",
                hr);
        goto error;
    }

    if (p_dec->fmt_in.i_cat == VIDEO_ES)
        FUNC20(p_dec, picture);
    else
        FUNC19(p_dec, aout_buffer);

    return VLC_SUCCESS;

error:
    FUNC24(p_dec, "Error in ProcessOutputStream()");
    if (picture)
        FUNC25(picture);
    if (aout_buffer)
        FUNC16(aout_buffer);
    return VLC_EGENERIC;
}