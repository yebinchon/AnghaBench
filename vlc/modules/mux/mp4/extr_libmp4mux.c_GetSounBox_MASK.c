#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ vlc_fourcc_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int i_channels; int i_bitspersample; int i_rate; int i_frame_length; } ;
struct TYPE_12__ {scalar_t__ i_codec; size_t i_extra; int /*<<< orphan*/ * p_extra; TYPE_1__ audio; } ;
struct TYPE_10__ {size_t i_data; int /*<<< orphan*/ * p_data; } ;
struct TYPE_11__ {TYPE_5__ fmt; TYPE_2__ sample_priv; } ;
typedef  TYPE_3__ mp4mux_trackinfo_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,size_t,char*) ; 
 scalar_t__ VLC_CODEC_A52 ; 
 scalar_t__ VLC_CODEC_AMR_NB ; 
 scalar_t__ VLC_CODEC_DTS ; 
 scalar_t__ VLC_CODEC_EAC3 ; 
 scalar_t__ VLC_CODEC_MP3 ; 
 scalar_t__ VLC_CODEC_MP4A ; 
 scalar_t__ VLC_CODEC_MPGA ; 
 scalar_t__ VLC_CODEC_WMAP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*) ; 

__attribute__((used)) static bo_t *FUNC13(vlc_object_t *p_obj, mp4mux_trackinfo_t *p_track, bool b_mov)
{
    FUNC5(p_obj);

    bool b_descr = true;
    vlc_fourcc_t codec = p_track->fmt.i_codec;
    char fcc[4];

    if (codec == VLC_CODEC_MPGA ||
        codec == VLC_CODEC_MP3) {
        if (b_mov) {
            b_descr = false;
            FUNC11(fcc, ".mp3", 4);
        } else
            FUNC11(fcc, "mp4a", 4);
    } else if (codec == VLC_CODEC_A52) {
        FUNC11(fcc, "ac-3", 4);
    } else if (codec == VLC_CODEC_EAC3) {
        FUNC11(fcc, "ec-3", 4);
    } else if (codec == VLC_CODEC_DTS) {
        FUNC11(fcc, "DTS ", 4);
    } else if (codec == VLC_CODEC_WMAP) {
        FUNC11(fcc, "wma ", 4);
    } else
        FUNC12(codec, fcc);

    bo_t *soun = FUNC10(fcc);
    if(!soun)
        return NULL;
    for (int i = 0; i < 6; i++)
        FUNC8(soun, 0);        // reserved;
    FUNC6(soun, 1);         // data-reference-index

    /* SoundDescription */
    if (b_mov && codec == VLC_CODEC_MP4A)
        FUNC6(soun, 1);     // version 1;
    else
        FUNC6(soun, 0);     // version 0;
    FUNC6(soun, 0);         // revision level (0)
    FUNC7(soun, 0);         // vendor
    // channel-count
    FUNC6(soun, p_track->fmt.audio.i_channels);
    // sample size
    FUNC6(soun, p_track->fmt.audio.i_bitspersample ?
                 p_track->fmt.audio.i_bitspersample : 16);
    FUNC6(soun, -2);        // compression id
    FUNC6(soun, 0);         // packet size (0)
    FUNC6(soun, p_track->fmt.audio.i_rate); // sampleratehi
    FUNC6(soun, 0);                             // sampleratelo

    /* Extended data for SoundDescription V1 */
    if (b_mov && p_track->fmt.i_codec == VLC_CODEC_MP4A) {
        /* samples per packet */
        FUNC7(soun, p_track->fmt.audio.i_frame_length);
        FUNC7(soun, 1536); /* bytes per packet */
        FUNC7(soun, 2);    /* bytes per frame */
        /* bytes per sample */
        FUNC7(soun, 2 /*p_fmt->audio.i_bitspersample/8 */);
    }

    /* Add an ES Descriptor */
    if (b_descr) {
        bo_t *box;

        /* codec specific extradata */
        const uint8_t *p_extradata = p_track->fmt.p_extra;
        size_t i_extradata = p_track->fmt.i_extra;
        if(p_track->sample_priv.i_data)
        {
            p_extradata = p_track->sample_priv.p_data;
            i_extradata = p_track->sample_priv.i_data;
        }

        if (b_mov && codec == VLC_CODEC_MP4A)
            box = FUNC3(p_track);
        else if (codec == VLC_CODEC_AMR_NB)
            box = FUNC0(&p_track->fmt);
        else if (codec == VLC_CODEC_A52 && i_extradata >= 3)
            box = FUNC4(p_extradata, i_extradata, "dac3");
        else if (codec == VLC_CODEC_EAC3 && i_extradata >= 5)
            box = FUNC4(p_extradata, i_extradata, "dec3");
        else if (codec == VLC_CODEC_WMAP)
            box = FUNC2(&p_track->fmt, "wfex");
        else
            box = FUNC1(p_track);

        if (box)
            FUNC9(soun, box);
    }

    return soun;
}