#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_23__ {int /*<<< orphan*/  psz_name; int /*<<< orphan*/  i_length; } ;
typedef  TYPE_2__ input_title_t ;
struct TYPE_24__ {int length; scalar_t__* song; } ;
typedef  TYPE_3__ gme_info_t ;
struct TYPE_22__ {int i_rate; int i_bytes_per_frame; int i_frame_length; int i_channels; int i_blockalign; int i_bitspersample; } ;
struct TYPE_25__ {int i_bitrate; TYPE_1__ audio; } ;
typedef  TYPE_4__ es_format_t ;
struct TYPE_26__ {TYPE_6__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; int /*<<< orphan*/  out; TYPE_7__* s; } ;
typedef  TYPE_5__ demux_t ;
struct TYPE_27__ {unsigned int titlec; int title_changed; int /*<<< orphan*/ * emu; TYPE_2__** titlev; int /*<<< orphan*/  pts; int /*<<< orphan*/  es; scalar_t__ track_id; } ;
typedef  TYPE_6__ demux_sys_t ;
struct TYPE_28__ {scalar_t__ i_buffer; } ;
typedef  TYPE_7__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 scalar_t__ LONG_MAX ; 
 int RATE ; 
 int /*<<< orphan*/  ReaderBlock ; 
 int /*<<< orphan*/  ReaderStream ; 
 int /*<<< orphan*/  VLC_CODEC_S16N ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 char* FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_3__**,unsigned int) ; 
 TYPE_6__* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC19 (unsigned int,int) ; 
 TYPE_2__* FUNC20 () ; 
 TYPE_7__* FUNC21 (TYPE_7__*,int) ; 
 scalar_t__ FUNC22 (TYPE_7__*,scalar_t__*) ; 
 int FUNC23 (TYPE_7__*,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static int FUNC24 (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    uint64_t size;

    if (FUNC22(demux->s, &size))
        return VLC_EGENERIC;
    if (size > LONG_MAX /* too big for GME */)
        return VLC_EGENERIC;

    /* Auto detection */
    const uint8_t *peek;
    if (FUNC23 (demux->s, &peek, 4) < 4)
        return VLC_EGENERIC;

    const char *type = FUNC9 (peek);
    if (!*type)
        return VLC_EGENERIC;
    FUNC16 (obj, "detected file type %s", type);

    block_t *data = NULL;
    if (size <= 0)
    {
        data = FUNC21 (demux->s, 1 << 24);
        if (data == NULL)
            return VLC_EGENERIC;
    }

    /* Initialization */
    demux_sys_t *sys = FUNC15 (sizeof (*sys));
    if (FUNC18(sys == NULL))
        return VLC_ENOMEM;

    sys->emu = FUNC11 (FUNC8 (type), RATE);
    if (sys->emu == NULL)
    {
        FUNC6 (sys);
        return VLC_ENOMEM;
    }
    if (data)
    {
        FUNC10 (sys->emu, ReaderBlock, data->i_buffer, data);
        FUNC1(data);
    }
    else
    {
        FUNC10 (sys->emu, ReaderStream, size, demux->s);
    }
    FUNC12 (sys->emu, sys->track_id = 0);

    es_format_t fmt;
    FUNC4 (&fmt, AUDIO_ES, VLC_CODEC_S16N);
    fmt.audio.i_rate = RATE;
    fmt.audio.i_bytes_per_frame = 4;
    fmt.audio.i_frame_length = 4;
    fmt.audio.i_channels = 2;
    fmt.audio.i_blockalign = 4;
    fmt.audio.i_bitspersample = 16;
    fmt.i_bitrate = RATE * 4;

    sys->es = FUNC5 (demux->out, &fmt);
    FUNC2 (&sys->pts, RATE, 1);
    FUNC3(&sys->pts, VLC_TICK_0);

    /* Titles */
    unsigned n = FUNC13 (sys->emu);
    sys->titlev = FUNC19 (n, sizeof (*sys->titlev));
    if (FUNC18(sys->titlev == NULL))
        n = 0;
    sys->titlec = n;
    for (unsigned i = 0; i < n; i++)
    {
         input_title_t *title = FUNC20 ();
         sys->titlev[i] = title;
         if (FUNC18(title == NULL))
             continue;

         gme_info_t *infos;
         if (FUNC14 (sys->emu, &infos, i))
             continue;
         FUNC16 (obj, "track %u: %s %d ms", i, infos->song, infos->length);
         if (infos->length != -1)
             title->i_length = FUNC0(infos->length);
         if (infos->song[0])
             title->psz_name = FUNC17 (infos->song);
         FUNC7 (infos);
    }
    sys->title_changed = false;

    /* Callbacks */
    demux->pf_demux = Demux;
    demux->pf_control = Control;
    demux->p_sys = sys;
    return VLC_SUCCESS;
}