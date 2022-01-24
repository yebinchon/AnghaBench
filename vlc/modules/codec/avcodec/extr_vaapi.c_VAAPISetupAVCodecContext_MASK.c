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
struct TYPE_4__ {int /*<<< orphan*/  hw_ctx; } ;
typedef  TYPE_1__ vlc_va_sys_t ;
struct TYPE_5__ {int /*<<< orphan*/ * hwaccel_context; } ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(void *opaque, AVCodecContext *avctx)
{
    vlc_va_sys_t *sys = opaque;
    avctx->hwaccel_context = &sys->hw_ctx;
}