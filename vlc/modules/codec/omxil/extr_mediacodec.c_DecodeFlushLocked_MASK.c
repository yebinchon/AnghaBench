#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_9__ {scalar_t__ (* flush ) (TYPE_3__*) ;} ;
struct TYPE_8__ {int b_input_dequeued; int b_flush_out; int b_output_ready; int /*<<< orphan*/  lock; int /*<<< orphan*/  dec_cond; int /*<<< orphan*/  b_aborted; int /*<<< orphan*/  cond; TYPE_3__ api; int /*<<< orphan*/  (* pf_on_flush ) (TYPE_1__*) ;scalar_t__ i_csd_send; scalar_t__ i_preroll_end; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    bool b_had_input = p_sys->b_input_dequeued;

    p_sys->b_input_dequeued = false;
    p_sys->b_flush_out = true;
    p_sys->i_preroll_end = 0;
    p_sys->b_output_ready = false;
    /* Resend CODEC_CONFIG buffer after a flush */
    p_sys->i_csd_send = 0;

    p_sys->pf_on_flush(p_dec);

    if (b_had_input && p_sys->api.flush(&p_sys->api) != VLC_SUCCESS)
    {
        FUNC0(p_dec);
        return;
    }

    FUNC3(&p_sys->cond);

    while (!p_sys->b_aborted && p_sys->b_flush_out)
        FUNC4(&p_sys->dec_cond, &p_sys->lock);
}