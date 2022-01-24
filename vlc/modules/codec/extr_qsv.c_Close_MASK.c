#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ encoder_t ;
struct TYPE_5__ {scalar_t__ input_pool; int /*<<< orphan*/  packets; int /*<<< orphan*/  session; } ;
typedef  TYPE_2__ encoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(vlc_object_t *this)
{
    encoder_t *enc = (encoder_t *)this;
    encoder_sys_t *sys = enc->p_sys;

    FUNC1(sys->session);
    FUNC0(sys->session);
    /* if (enc->fmt_out.p_extra) */
    /*     free(enc->fmt_out.p_extra); */
    FUNC2(&sys->packets);
    if (sys->input_pool)
        FUNC4(sys->input_pool);
    FUNC3(sys);
}