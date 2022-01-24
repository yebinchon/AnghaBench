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
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vlc_va_t ;
struct TYPE_5__ {int /*<<< orphan*/  va_pool; int /*<<< orphan*/  vctx; } ;
typedef  TYPE_2__ vlc_va_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(vlc_va_t *va)
{
    vlc_va_sys_t *sys = va->sys;

    FUNC1(sys->vctx);
    FUNC0(sys->va_pool);
}