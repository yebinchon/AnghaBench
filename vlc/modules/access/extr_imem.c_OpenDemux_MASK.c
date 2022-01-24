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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_17__ {int /*<<< orphan*/  es; } ;
typedef  TYPE_5__ imem_sys_t ;
struct TYPE_15__ {void* i_original_frame_height; void* i_original_frame_width; } ;
struct TYPE_16__ {TYPE_3__ spu; } ;
struct TYPE_14__ {unsigned int i_width; unsigned int i_height; unsigned int i_sar_num; unsigned int i_sar_den; unsigned int i_frame_rate; unsigned int i_frame_rate_base; } ;
struct TYPE_13__ {void* i_rate; void* i_channels; } ;
struct TYPE_18__ {int i_cat; void* psz_language; int /*<<< orphan*/  i_codec; TYPE_4__ subs; TYPE_2__ video; TYPE_1__ audio; void* i_group; void* i_id; } ;
typedef  TYPE_6__ es_format_t ;
struct TYPE_19__ {TYPE_5__* p_sys; int /*<<< orphan*/  pf_demux; int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * out; int /*<<< orphan*/  psz_location; } ;
typedef  TYPE_7__ demux_t ;

/* Variables and functions */
#define  AUDIO_ES 130 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  ControlDemux ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_5__**,int /*<<< orphan*/ ) ; 
#define  SPU_ES 129 
#define  VIDEO_ES 128 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int*,unsigned int*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 

__attribute__((used)) static int FUNC12(vlc_object_t *object)
{
    demux_t    *demux = (demux_t *)object;
    imem_sys_t *sys;

    if (demux->out == NULL)
        return VLC_EGENERIC;

    if (FUNC2(object, &sys, demux->psz_location))
        return VLC_EGENERIC;

    /* ES format */
    es_format_t fmt;
    FUNC4(&fmt, FUNC1(object), 0);

    fmt.i_id = FUNC8(object, "imem-id");
    fmt.i_group = FUNC8(object, "imem-group");

    char *tmp = FUNC9(object, "imem-codec");
    if (tmp)
        fmt.i_codec = FUNC11(fmt.i_cat, tmp);
    FUNC6(tmp);

    switch (fmt.i_cat) {
    case AUDIO_ES: {
        fmt.audio.i_channels = FUNC8(object, "imem-channels");
        fmt.audio.i_rate = FUNC8(object, "imem-samplerate");

        FUNC7(object, "Audio %4.4s %d channels %d Hz",
                (const char *)&fmt.i_codec,
                fmt.audio.i_channels, fmt.audio.i_rate);
        break;
    }
    case VIDEO_ES: {
        fmt.video.i_width  = FUNC8(object, "imem-width");
        fmt.video.i_height = FUNC8(object, "imem-height");
        unsigned num, den;
        if (!FUNC10(object, &num, &den, "imem-dar") && num > 0 && den > 0) {
            if (fmt.video.i_width != 0 && fmt.video.i_height != 0) {
                fmt.video.i_sar_num = num * fmt.video.i_height;
                fmt.video.i_sar_den = den * fmt.video.i_width;
            }
        }
        if (!FUNC10(object, &num, &den, "imem-fps") && num > 0 && den > 0) {
            fmt.video.i_frame_rate      = num;
            fmt.video.i_frame_rate_base = den;
        }

        FUNC7(object, "Video %4.4s %dx%d  SAR %d:%d frame rate %u/%u",
                (const char *)&fmt.i_codec,
                fmt.video.i_width, fmt.video.i_height,
                fmt.video.i_sar_num, fmt.video.i_sar_den,
                fmt.video.i_frame_rate, fmt.video.i_frame_rate_base);
        break;
    }
    case SPU_ES: {
        fmt.subs.spu.i_original_frame_width =
            FUNC8(object, "imem-width");
        fmt.subs.spu.i_original_frame_height =
            FUNC8(object, "imem-height");

        FUNC7(object, "Subtitle %4.4s",
                (const char *)&fmt.i_codec);
        break;
    }
    default:
        FUNC3(&fmt);
        FUNC0(sys);
        return VLC_EGENERIC;
    }

    fmt.psz_language = FUNC9(object, "imem-language");

    sys->es = FUNC5(demux->out, &fmt);
    FUNC3(&fmt);

    if (!sys->es) {
        FUNC0(sys);
        return VLC_EGENERIC;
    }

    /* */
    demux->pf_control = ControlDemux;
    demux->pf_demux   = Demux;
    demux->p_sys      = sys;

    return VLC_SUCCESS;
}