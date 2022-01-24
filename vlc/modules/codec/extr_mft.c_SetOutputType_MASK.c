#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_14__ {int i_bitspersample; int i_channels; int i_rate; int /*<<< orphan*/  i_physical_channels; } ;
struct TYPE_19__ {int /*<<< orphan*/  orientation; } ;
struct TYPE_15__ {TYPE_2__ audio; scalar_t__ i_codec; TYPE_7__ video; } ;
struct TYPE_13__ {scalar_t__ i_cat; TYPE_2__ audio; int /*<<< orphan*/  video; } ;
struct TYPE_16__ {TYPE_3__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_17__ {int /*<<< orphan*/  mft; } ;
typedef  TYPE_5__ decoder_sys_t ;
typedef  int UINT32 ;
struct TYPE_18__ {int /*<<< orphan*/  Data1; } ;
typedef  int /*<<< orphan*/  IMFMediaType ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_6__ GUID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MFAudioFormat_Float ; 
 int /*<<< orphan*/  MFVideoFormat_I420 ; 
 int /*<<< orphan*/  MFVideoFormat_YV12 ; 
 scalar_t__ MF_E_NO_MORE_TYPES ; 
 scalar_t__ MF_E_TRANSFORM_TYPE_NOT_SET ; 
 int /*<<< orphan*/  MF_MT_AUDIO_BITS_PER_SAMPLE ; 
 int /*<<< orphan*/  MF_MT_AUDIO_NUM_CHANNELS ; 
 int /*<<< orphan*/  MF_MT_AUDIO_SAMPLES_PER_SECOND ; 
 int /*<<< orphan*/  MF_MT_SUBTYPE ; 
 int /*<<< orphan*/  ORIENT_BOTTOM_LEFT ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  d3d_format_table ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/ * pi_channels_maps ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(decoder_t *p_dec, DWORD stream_id, IMFMediaType **result)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    HRESULT hr;

    *result = NULL;

    IMFMediaType *output_media_type = NULL;

    /*
     * Enumerate available output types. The list is ordered by
     * preference thus we will use the first one unless YV12/I420 is
     * available for video or float32 for audio.
     */
    int output_type_index = -1;
    bool found = false;
    for (int i = 0; !found; ++i)
    {
        hr = FUNC5(p_sys->mft, stream_id, i, &output_media_type);
        if (hr == MF_E_NO_MORE_TYPES)
            break;
        else if (hr == MF_E_TRANSFORM_TYPE_NOT_SET)
        {
            /* The input type must be set before setting the output type for this MFT. */
            return VLC_SUCCESS;
        }
        else if (FUNC0(hr))
            goto error;

        GUID subtype;
        hr = FUNC2(output_media_type, &MF_MT_SUBTYPE, &subtype);
        if (FUNC0(hr))
            goto error;

        if (p_dec->fmt_in.i_cat == VIDEO_ES)
        {
            if (FUNC7(&subtype, &MFVideoFormat_YV12) || FUNC7(&subtype, &MFVideoFormat_I420))
                found = true;
            /* Transform might offer output in a D3DFMT propietary FCC. If we can
             * use it, fall back to it in case we do not find YV12 or I420 */
            else if(output_type_index < 0 && FUNC1(d3d_format_table, &subtype) > 0)
                    output_type_index = i;
        }
        else
        {
            UINT32 bits_per_sample;
            hr = FUNC3(output_media_type, &MF_MT_AUDIO_BITS_PER_SAMPLE, &bits_per_sample);
            if (FUNC0(hr))
                continue;
            if (bits_per_sample == 32 && FUNC7(&subtype, &MFAudioFormat_Float))
                found = true;
        }

        if (found)
            output_type_index = i;

        FUNC4(output_media_type);
        output_media_type = NULL;
    }
    /*
     * It's not an error if we don't find the output type we were
     * looking for, in this case we use the first available type.
     */
    if(output_type_index < 0)
        /* No output format found we prefer, just pick the first one preferred
         * by the MFT */
        output_type_index = 0;

    hr = FUNC5(p_sys->mft, stream_id, output_type_index, &output_media_type);
    if (FUNC0(hr))
        goto error;

    hr = FUNC6(p_sys->mft, stream_id, output_media_type, 0);
    if (FUNC0(hr))
        goto error;

    GUID subtype;
    hr = FUNC2(output_media_type, &MF_MT_SUBTYPE, &subtype);
    if (FUNC0(hr))
        goto error;

    if (p_dec->fmt_in.i_cat == VIDEO_ES)
    {
        FUNC10( &p_dec->fmt_out.video, &p_dec->fmt_in.video );

        /* Transform might offer output in a D3DFMT propietary FCC */
        vlc_fourcc_t fcc = FUNC1(d3d_format_table, &subtype);
        if(fcc) {
            /* D3D formats are upside down */
            p_dec->fmt_out.video.orientation = ORIENT_BOTTOM_LEFT;
        } else {
            fcc = FUNC11(p_dec->fmt_in.i_cat, subtype.Data1);
        }

        p_dec->fmt_out.i_codec = fcc;
    }
    else
    {
        p_dec->fmt_out.audio = p_dec->fmt_in.audio;

        UINT32 bitspersample = 0;
        hr = FUNC3(output_media_type, &MF_MT_AUDIO_BITS_PER_SAMPLE, &bitspersample);
        if (FUNC8(hr) && bitspersample)
            p_dec->fmt_out.audio.i_bitspersample = bitspersample;

        UINT32 channels = 0;
        hr = FUNC3(output_media_type, &MF_MT_AUDIO_NUM_CHANNELS, &channels);
        if (FUNC8(hr) && channels)
            p_dec->fmt_out.audio.i_channels = channels;

        UINT32 rate = 0;
        hr = FUNC3(output_media_type, &MF_MT_AUDIO_SAMPLES_PER_SECOND, &rate);
        if (FUNC8(hr) && rate)
            p_dec->fmt_out.audio.i_rate = rate;

        vlc_fourcc_t fourcc;
        FUNC13(subtype.Data1, &fourcc, NULL);
        p_dec->fmt_out.i_codec = FUNC12(fourcc, p_dec->fmt_out.audio.i_bitspersample);

        p_dec->fmt_out.audio.i_physical_channels = pi_channels_maps[p_dec->fmt_out.audio.i_channels];
    }

    *result = output_media_type;

    return VLC_SUCCESS;

error:
    FUNC9(p_dec, "Error in SetOutputType()");
    if (output_media_type)
        FUNC4(output_media_type);
    return VLC_EGENERIC;
}