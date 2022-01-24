#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_15__ {int i_last_track; TYPE_1__* p_sectors; } ;
typedef  TYPE_3__ vcddev_toc_t ;
typedef  int /*<<< orphan*/  vcddev_t ;
struct TYPE_14__ {int i_rate; int i_channels; } ;
struct TYPE_16__ {TYPE_2__ audio; } ;
typedef  TYPE_4__ es_format_t ;
struct TYPE_17__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; int /*<<< orphan*/ * out; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ demux_t ;
struct TYPE_18__ {void* start; unsigned int length; scalar_t__ position; int /*<<< orphan*/  pts; int /*<<< orphan*/  es; int /*<<< orphan*/ * vcddev; } ;
typedef  TYPE_6__ demux_sys_t ;
struct TYPE_13__ {int i_lba; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 scalar_t__ CD_ROM_XA_INTERVAL ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  DemuxControl ; 
 int FUNC0 (TYPE_3__*,int*,int*) ; 
 int /*<<< orphan*/  VLC_CODEC_S16L ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(vlc_object_t *obj, vcddev_t *dev, unsigned track)
{
    demux_t *demux = (demux_t *)obj;

    if (demux->out == NULL)
        goto error;

    demux_sys_t *sys = FUNC11(obj, sizeof (*sys));
    if (FUNC8(sys == NULL))
        goto error;

    demux->p_sys = sys;
    sys->vcddev = dev;
    sys->start = FUNC9(obj, "cdda-first-sector");
    sys->length = FUNC9(obj, "cdda-last-sector") - sys->start;

    /* Track number in input item */
    if (sys->start == (unsigned)-1 || sys->length == (unsigned)-1)
    {
        vcddev_toc_t *p_toc = FUNC6(obj, dev, true);
        if(p_toc == NULL)
            goto error;

        int i_cdda_tracks, i_cdda_first, i_cdda_last;
        i_cdda_tracks = FUNC0(p_toc, &i_cdda_first, &i_cdda_last);

        if (track == 0 || track > (unsigned) i_cdda_tracks)
        {
            FUNC7(obj, "invalid track number: %u/%i", track, i_cdda_tracks);
            FUNC10(p_toc);
            goto error;
        }

        track--;
        int i_first_sector = p_toc->p_sectors[track].i_lba;
        int i_last_sector = p_toc->p_sectors[track + 1].i_lba;
        if(i_cdda_first + track == (unsigned) i_cdda_last && p_toc->i_last_track > i_cdda_last)
            i_last_sector -= CD_ROM_XA_INTERVAL;

        sys->start = i_first_sector;
        sys->length = i_last_sector - i_first_sector;
        FUNC10(p_toc);
    }

    es_format_t fmt;

    FUNC3(&fmt, AUDIO_ES, VLC_CODEC_S16L);
    fmt.audio.i_rate = 44100;
    fmt.audio.i_channels = 2;
    sys->es = FUNC4(demux->out, &fmt);

    FUNC1(&sys->pts, 44100, 1);
    FUNC2(&sys->pts, VLC_TICK_0);

    sys->position = 0;
    demux->pf_demux = Demux;
    demux->pf_control = DemuxControl;
    return VLC_SUCCESS;

error:
    FUNC5(obj, dev);
    return VLC_EGENERIC;
}