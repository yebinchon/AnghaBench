#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_19__ {int i_frame_rate; int i_frame_rate_base; int /*<<< orphan*/  i_chroma; } ;
struct TYPE_20__ {TYPE_1__ video; void* i_group; void* i_id; int /*<<< orphan*/  i_codec; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_21__ {TYPE_4__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; int /*<<< orphan*/  out; int /*<<< orphan*/  s; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_22__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  pts_next; scalar_t__ is_realtime; int /*<<< orphan*/  pts_offset; int /*<<< orphan*/  duration; int /*<<< orphan*/  es; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ demux_sys_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Demux ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 scalar_t__ VLC_CODEC_MXPEG ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_4__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC13 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*) ; 
 void* FUNC15 (TYPE_3__*,char*) ; 
 char* FUNC16 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC17 (TYPE_3__*,int*,int*,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static int FUNC22(vlc_object_t *object)
{
    demux_t *demux = (demux_t*)object;

    /* Detect the image type */
    vlc_fourcc_t codec = FUNC1(demux->s);
    if (codec == 0)
        return VLC_EGENERIC;

    FUNC11(demux, "Detected image: %s",
            FUNC19(VIDEO_ES, codec));

    if (codec == VLC_CODEC_MXPEG)
        return VLC_EGENERIC; //let avformat demux this file

    /* Load and if selected decode */
    es_format_t fmt;
    FUNC7(&fmt, VIDEO_ES, codec);
    fmt.video.i_chroma = fmt.i_codec;

    block_t *data = FUNC2(demux);
    if (data && FUNC13(demux, "image-decode")) {
        char *string = FUNC16(demux, "image-chroma");
        vlc_fourcc_t chroma = FUNC18(VIDEO_ES, string);
        FUNC9(string);

        data = FUNC0(demux, &fmt, chroma, data);
    }
    fmt.i_id    = FUNC15(demux, "image-id");
    fmt.i_group = FUNC15(demux, "image-group");
    if (FUNC17(demux,
                             &fmt.video.i_frame_rate,
                             &fmt.video.i_frame_rate_base,
                             "image-fps") ||
        fmt.video.i_frame_rate <= 0 || fmt.video.i_frame_rate_base <= 0) {
        FUNC12(demux, "Invalid frame rate, using 10/1 instead");
        fmt.video.i_frame_rate      = 10;
        fmt.video.i_frame_rate_base = 1;
    }

    /* If loadind failed, we still continue to avoid mis-detection
     * by other demuxers. */
    if (!data)
        FUNC12(demux, "Failed to load the image");

    /* */
    demux_sys_t *sys = FUNC10(sizeof(*sys));
    if (!sys) {
        if (data)
            FUNC3(data);
        FUNC6(&fmt);
        return VLC_ENOMEM;
    }

    sys->data        = data;
    sys->es          = FUNC8(demux->out, &fmt);
    sys->duration    = FUNC20( FUNC14(demux, "image-duration") );
    sys->is_realtime = FUNC13(demux, "image-realtime");
    sys->pts_offset  = sys->is_realtime ? FUNC21() : 0;
    sys->pts_next    = VLC_TICK_INVALID;
    FUNC4(&sys->pts, fmt.video.i_frame_rate, fmt.video.i_frame_rate_base);
    FUNC5(&sys->pts, VLC_TICK_0);

    FUNC6(&fmt);

    demux->pf_demux   = Demux;
    demux->pf_control = Control;
    demux->p_sys      = sys;
    return VLC_SUCCESS;
}