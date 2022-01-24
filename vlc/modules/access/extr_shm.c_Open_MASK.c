#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_17__ {int i_bits_per_pixel; int i_sar_num; int i_sar_den; int i_frame_rate; int i_frame_rate_base; int i_visible_width; int i_width; int i_visible_height; int i_height; int /*<<< orphan*/  i_chroma; } ;
struct TYPE_18__ {TYPE_2__ video; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_19__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/ * pf_demux; TYPE_5__* p_sys; int /*<<< orphan*/ * out; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_16__ {int length; void* addr; } ;
struct TYPE_20__ {int fd; int /*<<< orphan*/  (* detach ) (TYPE_5__*) ;int /*<<< orphan*/  timer; int /*<<< orphan*/  es; TYPE_1__ mem; } ;
typedef  TYPE_5__ demux_sys_t ;

/* Variables and functions */
 scalar_t__ CLOCK_FREQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  Control ; 
 void FUNC2 (void*) ; 
 void FUNC3 (void*) ; 
 int IPC_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SHM_RDONLY ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_RGB15 ; 
 int /*<<< orphan*/  VLC_CODEC_RGB16 ; 
 int /*<<< orphan*/  VLC_CODEC_RGB24 ; 
 int /*<<< orphan*/  VLC_CODEC_RGB32 ; 
 int /*<<< orphan*/  VLC_CODEC_RGB8 ; 
 int /*<<< orphan*/  VLC_CODEC_XWD ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (float) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,...) ; 
 void* FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 float FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (TYPE_4__*,char*) ; 
 char* FUNC14 (TYPE_4__*,char*) ; 
 TYPE_5__* FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,void (*) (void*),TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20 (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    if (demux->out == NULL)
        return VLC_EGENERIC;

    demux_sys_t *sys = FUNC15(obj, sizeof (*sys));
    if (FUNC11(sys == NULL))
        return VLC_ENOMEM;

    uint32_t chroma;
    uint16_t width = 0, height = 0;
    uint8_t bpp;
    switch (FUNC13 (demux, "shm-depth"))
    {
        case 32:
            chroma = VLC_CODEC_RGB32; bpp = 32;
            break;
        case 24:
            chroma = VLC_CODEC_RGB24; bpp = 24;
            break;
        case 16:
            chroma = VLC_CODEC_RGB16; bpp = 16;
            break;
        case 15:
            chroma = VLC_CODEC_RGB15; bpp = 16;
            break;
        case 8:
            chroma = VLC_CODEC_RGB8; bpp = 8;
            break;
        case 0:
            chroma = VLC_CODEC_XWD; bpp = 0;
            break;
        default:
            return VLC_EGENERIC;
    }
    if (bpp != 0)
    {
        width = FUNC13 (demux, "shm-width");
        height = FUNC13 (demux, "shm-height");
    }

    static void (*Demux) (void *);

    char *path = FUNC14 (demux, "shm-file");
    if (path != NULL)
    {
        sys->fd = FUNC16 (path, O_RDONLY);
        if (sys->fd == -1)
            FUNC8 (demux, "cannot open file %s: %s", path,
                     FUNC17(errno));
        FUNC6 (path);
        if (sys->fd == -1)
            return VLC_EGENERIC;

        sys->detach = CloseFile;
        Demux = DemuxFile;
    }
    else
    {
#ifdef HAVE_SYS_SHM_H
        sys->mem.length = width * height * (bpp >> 3);
        if (sys->mem.length == 0)
            return VLC_EGENERIC;

        int id = var_InheritInteger (demux, "shm-id");
        if (id == IPC_PRIVATE)
            return VLC_EGENERIC;
        void *mem = shmat (id, NULL, SHM_RDONLY);

        if (mem == (const void *)(-1))
        {
            msg_Err (demux, "cannot attach segment %d: %s", id,
                     vlc_strerror_c(errno));
            return VLC_EGENERIC;
        }
        sys->mem.addr = mem;
        sys->detach = CloseIPC;
        Demux = DemuxIPC;
#else
        goto error;
#endif
    }

    /* Initializes format */
    float rate = FUNC12 (obj, "shm-fps");
    if (rate <= 0.f)
        goto error;

    vlc_tick_t interval = FUNC7((float)CLOCK_FREQ / rate);
    if (!interval)
        goto error;

    es_format_t fmt;
    FUNC4 (&fmt, VIDEO_ES, chroma);
    fmt.video.i_chroma = chroma;
    fmt.video.i_bits_per_pixel = bpp;
    fmt.video.i_sar_num = fmt.video.i_sar_den = 1;
    fmt.video.i_frame_rate = 1000 * rate;
    fmt.video.i_frame_rate_base = 1000;
    fmt.video.i_visible_width = fmt.video.i_width = width;
    fmt.video.i_visible_height = fmt.video.i_height = height;

    sys->es = FUNC5 (demux->out, &fmt);

    /* Initializes demux */
    if (FUNC18 (&sys->timer, Demux, demux))
        goto error;
    FUNC19 (sys->timer, interval);

    demux->p_sys = sys;
    demux->pf_demux   = NULL;
    demux->pf_control = Control;
    return VLC_SUCCESS;

error:
    sys->detach (sys);
    return VLC_EGENERIC;
}