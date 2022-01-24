#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_9__ {scalar_t__ i_codec; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_11__ {int /*<<< orphan*/  mft; int /*<<< orphan*/  nal_length_size; } ;
typedef  TYPE_3__ decoder_sys_t ;
struct TYPE_12__ {scalar_t__ i_pts; scalar_t__ i_dts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_4__ block_t ;
typedef  int /*<<< orphan*/  IMFSample ;
typedef  int /*<<< orphan*/  IMFMediaBuffer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ VLC_CODEC_H264 ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC14(decoder_t *p_dec, DWORD stream_id, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;
    IMFSample *input_sample = NULL;

    if (FUNC0(p_dec, stream_id, &input_sample, p_block->i_buffer))
        goto error;

    IMFMediaBuffer *input_media_buffer = NULL;
    hr = FUNC6(input_sample, 0, &input_media_buffer);
    if (FUNC1(hr))
        goto error;

    BYTE *buffer_start;
    hr = FUNC2(input_media_buffer, &buffer_start, NULL, NULL);
    if (FUNC1(hr))
        goto error;

    FUNC12(buffer_start, p_block->p_buffer, p_block->i_buffer);

    if (p_dec->fmt_in.i_codec == VLC_CODEC_H264)
    {
        /* in-place NAL to annex B conversion. */
        FUNC11(buffer_start, p_block->i_buffer, p_sys->nal_length_size);
    }

    hr = FUNC5(input_media_buffer);
    if (FUNC1(hr))
        goto error;

    hr = FUNC4(input_media_buffer, p_block->i_buffer);
    if (FUNC1(hr))
        goto error;

    vlc_tick_t ts = p_block->i_pts == VLC_TICK_INVALID ? p_block->i_dts : p_block->i_pts;

    /* Convert from microseconds to 100 nanoseconds unit. */
    hr = FUNC8(input_sample, FUNC10(ts));
    if (FUNC1(hr))
        goto error;

    hr = FUNC9(p_sys->mft, stream_id, input_sample, 0);
    if (FUNC1(hr))
        goto error;

    FUNC3(input_media_buffer);
    FUNC7(input_sample);

    return VLC_SUCCESS;

error:
    FUNC13(p_dec, "Error in ProcessInputStream()");
    if (input_sample)
        FUNC7(input_sample);
    return VLC_EGENERIC;
}