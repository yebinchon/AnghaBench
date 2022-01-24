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
typedef  char uint8_t ;
struct TYPE_12__ {int i_visible_width; int i_visible_height; } ;
struct TYPE_10__ {int i_codec; char* p_extra; size_t i_extra; TYPE_5__ video; } ;
struct TYPE_9__ {size_t i_data; char* p_data; } ;
struct TYPE_11__ {TYPE_2__ fmt; TYPE_1__ sample_priv; } ;
typedef  TYPE_3__ mp4mux_trackinfo_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char const*,size_t,char*) ; 
#define  VLC_CODEC_AV1 139 
#define  VLC_CODEC_H263 138 
#define  VLC_CODEC_H264 137 
#define  VLC_CODEC_HEVC 136 
#define  VLC_CODEC_MJPG 135 
#define  VLC_CODEC_MP4V 134 
#define  VLC_CODEC_MPGV 133 
#define  VLC_CODEC_SVQ1 132 
#define  VLC_CODEC_SVQ3 131 
#define  VLC_CODEC_VC1 130 
#define  VLC_CODEC_YUYV 129 
#define  VLC_CODEC_YV12 128 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,char*) ; 

__attribute__((used)) static bo_t *FUNC18(vlc_object_t *p_obj, mp4mux_trackinfo_t *p_track, bool b_mov)
{
    FUNC9(*p_obj);
    FUNC9(b_mov);

    char fcc[4];

    switch(p_track->fmt.i_codec)
    {
    case VLC_CODEC_MP4V:
    case VLC_CODEC_MPGV: FUNC16(fcc, "mp4v", 4); break;
    case VLC_CODEC_MJPG: FUNC16(fcc, "mjpa", 4); break;
    case VLC_CODEC_SVQ1: FUNC16(fcc, "SVQ1", 4); break;
    case VLC_CODEC_SVQ3: FUNC16(fcc, "SVQ3", 4); break;
    case VLC_CODEC_H263: FUNC16(fcc, "s263", 4); break;
    case VLC_CODEC_H264: FUNC16(fcc, "avc1", 4); break;
    case VLC_CODEC_VC1 : FUNC16(fcc, "vc-1", 4); break;
    /* FIXME: find a way to know if no non-VCL units are in the stream (->hvc1)
     * see 14496-15 8.4.1.1.1 */
    case VLC_CODEC_HEVC: FUNC16(fcc, "hev1", 4); break;
    case VLC_CODEC_YV12: FUNC16(fcc, "yv12", 4); break;
    case VLC_CODEC_YUYV: FUNC16(fcc, "yuy2", 4); break;
    default:
        FUNC17(p_track->fmt.i_codec, fcc);
        break;
    }

    bo_t *vide = FUNC15(fcc);
    if(!vide)
        return NULL;
    for (int i = 0; i < 6; i++)
        FUNC12(vide, 0);        // reserved;
    FUNC10(vide, 1);         // data-reference-index

    FUNC10(vide, 0);         // predefined;
    FUNC10(vide, 0);         // reserved;
    for (int i = 0; i < 3; i++)
        FUNC11(vide, 0);     // predefined;

    FUNC10(vide, p_track->fmt.video.i_visible_width);  // i_width
    FUNC10(vide, p_track->fmt.video.i_visible_height); // i_height

    FUNC11(vide, 0x00480000);                // h 72dpi
    FUNC11(vide, 0x00480000);                // v 72dpi

    FUNC11(vide, 0);         // data size, always 0
    FUNC10(vide, 1);         // frames count per sample

    // compressor name;
    uint8_t compressor_name[32] = {0};
    switch (p_track->fmt.i_codec)
    {
        case VLC_CODEC_AV1:
            FUNC16(compressor_name, "\012AOM Coding", 11);
            break;
        default:
            break;
    }
    FUNC13(vide, 32, compressor_name);

    FUNC10(vide, 0x18);      // depth
    FUNC10(vide, 0xffff);    // predefined

    /* codec specific extradata */
    const uint8_t *p_extradata = p_track->fmt.p_extra;
    size_t i_extradata = p_track->fmt.i_extra;
    if(p_track->sample_priv.i_data)
    {
        p_extradata = p_track->sample_priv.p_data;
        i_extradata = p_track->sample_priv.i_data;
    }

    /* add an ES Descriptor */
    switch(p_track->fmt.i_codec)
    {
    case VLC_CODEC_AV1:
        FUNC14(vide, FUNC8(p_extradata, i_extradata, "av1C"));
        FUNC14(vide, FUNC2(&p_track->fmt.video, b_mov));
        break;

    case VLC_CODEC_MP4V:
    case VLC_CODEC_MPGV:
        FUNC14(vide, FUNC4(p_track));
        break;

    case VLC_CODEC_H263:
        FUNC14(vide, FUNC3());
        break;

    case VLC_CODEC_SVQ3:
        FUNC14(vide, FUNC7(p_extradata, i_extradata));
        break;

    case VLC_CODEC_H264:
        FUNC14(vide, FUNC0(p_extradata, i_extradata));
        break;

    case VLC_CODEC_VC1:
        FUNC14(vide, FUNC8(p_extradata, i_extradata, "dvc1"));
            break;

    case VLC_CODEC_HEVC:
        /* Write HvcC without forcing VPS/SPS/PPS/SEI array_completeness */
        FUNC14(vide, FUNC5(p_extradata, i_extradata, false));
        break;
    }

    FUNC14(vide, FUNC6(&p_track->fmt.video));
    FUNC14(vide, FUNC1(&p_track->fmt.video));

    return vide;
}