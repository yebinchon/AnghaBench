#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  filters; int /*<<< orphan*/  ppmd7_context; } ;
struct TYPE_4__ {TYPE_1__ v3; } ;
struct ar_archive_rar_uncomp {int version; TYPE_2__ state; int /*<<< orphan*/  lzss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gSzAlloc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ar_archive_rar_uncomp*) ; 

void FUNC4(struct ar_archive_rar_uncomp *uncomp)
{
    if (!uncomp->version)
        return;
    FUNC3(uncomp);
    FUNC1(&uncomp->lzss);
    if (uncomp->version == 3) {
        FUNC0(&uncomp->state.v3.ppmd7_context, &gSzAlloc);
        FUNC2(&uncomp->state.v3.filters);
    }
    uncomp->version = 0;
}