#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tymed; int /*<<< orphan*/  lindex; int /*<<< orphan*/  dwAspect; int /*<<< orphan*/  ptd; int /*<<< orphan*/  cfFormat; } ;
typedef  TYPE_1__ FORMATETC ;

/* Variables and functions */
 char const* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *FUNC1(const FORMATETC *formatetc)
{
    return FUNC0("{ cfFormat = 0x%x, ptd = %p, dwAspect = %d, lindex = %d, tymed = %d }",
        formatetc->cfFormat, formatetc->ptd, formatetc->dwAspect,
        formatetc->lindex, formatetc->tymed);
}