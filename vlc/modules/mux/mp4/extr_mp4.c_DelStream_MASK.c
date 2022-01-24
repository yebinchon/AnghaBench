#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_start_dts; int /*<<< orphan*/  muxh; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
struct TYPE_15__ {int /*<<< orphan*/  p_fifo; scalar_t__ p_sys; } ;
typedef  TYPE_3__ sout_input_t ;
struct TYPE_16__ {int /*<<< orphan*/  tinfo; } ;
typedef  TYPE_4__ mp4_stream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRAGMENTED ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC7(sout_mux_t *p_mux, sout_input_t *p_input)
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    mp4_stream_t *p_stream = (mp4_stream_t*)p_input->p_sys;

    if(!FUNC4(p_sys->muxh, FRAGMENTED))
    {
        while(FUNC3(p_input->p_fifo) > 0 &&
              FUNC1(p_mux, p_input, p_stream) == VLC_SUCCESS) {};

        if(FUNC0(p_stream, p_sys->i_start_dts, false))
            FUNC5(FUNC2(p_mux), p_stream->tinfo);
    }

    FUNC6(p_mux, "removing input");
}