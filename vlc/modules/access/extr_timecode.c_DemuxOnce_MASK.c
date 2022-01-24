#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* vlc_tick_t ;
struct TYPE_11__ {int rem; void* quot; } ;
typedef  TYPE_1__ lldiv_t ;
struct TYPE_12__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_15__ {int i_divider_num; int i_divider_den; } ;
struct TYPE_13__ {int /*<<< orphan*/  es; TYPE_7__ date; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_14__ {int i_buffer; void* i_length; void* i_dts; void* i_pts; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 void* VLC_TICK_0 ; 
 int FUNC0 (char**,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (char*,int) ; 
 void* FUNC3 (TYPE_7__*) ; 
 void* FUNC4 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 TYPE_1__ FUNC7 (void*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9 (demux_t *demux, bool master)
{
    demux_sys_t *sys = demux->p_sys;
    vlc_tick_t pts = FUNC3 (&sys->date);
    lldiv_t d;
    unsigned h, m, s, f;

    d = FUNC7 (pts - VLC_TICK_0, CLOCK_FREQ);
    f = d.rem * sys->date.i_divider_num / sys->date.i_divider_den / CLOCK_FREQ;
    d = FUNC7 (d.quot, 60);
    s = d.rem;
    d = FUNC7 (d.quot, 60);
    m = d.rem;
    h = d.quot;

    char *str;
    int len = FUNC0 (&str, "%02u:%02u:%02u:%02u", h, m, s, f);
    if (len == -1)
        return -1;

    block_t *block = FUNC2 (str, len + 1);
    if (FUNC8(block == NULL))
        return -1;

    block->i_buffer = len;
    FUNC1(str[len] == '\0');

    block->i_pts = block->i_dts = pts;
    block->i_length = FUNC4 (&sys->date, 1) - pts;
    FUNC5 (demux->out, sys->es, block);
    if (master)
        FUNC6(demux->out, pts);
    return 1;
}