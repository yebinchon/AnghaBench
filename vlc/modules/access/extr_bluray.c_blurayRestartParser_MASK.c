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
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_7__ {int /*<<< orphan*/  p_out; scalar_t__ p_parser; int /*<<< orphan*/  p_tf_out; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLURAY_ES_OUT_CONTROL_DISABLE_OUTPUT ; 
 int /*<<< orphan*/  BLURAY_ES_OUT_CONTROL_ENABLE_OUTPUT ; 
 int /*<<< orphan*/  BLURAY_ES_OUT_CONTROL_RANDOM_ACCESS ; 
 int /*<<< orphan*/  ES_OUT_TF_FILTER_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(demux_t *p_demux, bool b_flush, bool b_random_access)
{
    /*
     * This is a hack and will have to be removed.
     * The parser should be flushed, and not destroy/created each time
     * we are changing title.
     */
    demux_sys_t *p_sys = p_demux->p_sys;

    if(b_flush)
        FUNC1(p_sys->p_out, BLURAY_ES_OUT_CONTROL_DISABLE_OUTPUT);

    if (p_sys->p_parser)
        FUNC3(p_sys->p_parser);

    if(b_flush)
        FUNC1(p_sys->p_tf_out, ES_OUT_TF_FILTER_RESET);

    p_sys->p_parser = FUNC4(FUNC0(p_demux), "ts", p_sys->p_out);
    if (!p_sys->p_parser)
        FUNC2(p_demux, "Failed to create TS demuxer");

    FUNC1(p_sys->p_out, BLURAY_ES_OUT_CONTROL_ENABLE_OUTPUT);

    FUNC1(p_sys->p_out, BLURAY_ES_OUT_CONTROL_RANDOM_ACCESS, b_random_access);
}