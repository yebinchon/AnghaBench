#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  es_format_t ;
struct TYPE_6__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; TYPE_2__* p_sys; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_7__ {int /*<<< orphan*/  next_time; int /*<<< orphan*/  date; int /*<<< orphan*/  es; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  SPU_ES ; 
 int /*<<< orphan*/  VLC_CODEC_ITU_T140 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,unsigned int*,unsigned int*,char*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8 (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    if (demux->out == NULL)
        return VLC_EGENERIC;

    demux_sys_t *sys = FUNC7(obj, sizeof (*sys));
    if (FUNC5(sys == NULL))
        return VLC_ENOMEM;

    es_format_t fmt;
    FUNC2 (&fmt, SPU_ES, VLC_CODEC_ITU_T140);
    sys->es = FUNC3 (demux->out, &fmt);

    unsigned num, den;
    if (FUNC6 (demux, &num, &den, "timecode-fps")
     || !num || !den)
    {
        FUNC4 (demux, "invalid frame rate");
        return VLC_EGENERIC;
    }

    FUNC0 (&sys->date, num, den);
    FUNC1 (&sys->date, VLC_TICK_0);
    sys->next_time = VLC_TICK_INVALID;

    demux->p_sys = sys;
    demux->pf_demux   = Demux;
    demux->pf_control = Control;
    return VLC_SUCCESS;
}