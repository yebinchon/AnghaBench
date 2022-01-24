#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int i_index; int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_dec; int /*<<< orphan*/  b_vd_ref; int /*<<< orphan*/  (* pf_release ) (int /*<<< orphan*/ *,unsigned int,int) ;} ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ picture_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC6(picture_sys_t *p_picsys)
{
    FUNC4(&p_picsys->hw.lock);
    if (p_picsys->hw.i_index >= 0)
    {
        FUNC0(p_picsys->hw.pf_release && p_picsys->hw.p_dec);
        p_picsys->hw.pf_release(p_picsys->hw.p_dec,
                                     (unsigned int) p_picsys->hw.i_index,
                                     false);
        p_picsys->hw.i_index = -1;
    }
    p_picsys->hw.pf_release = NULL;
    p_picsys->hw.p_dec = NULL;
    /* Release p_picsys if references from VOUT and from decoder are NULL */
    if (!p_picsys->hw.b_vd_ref && !p_picsys->hw.p_dec)
    {
        FUNC5(&p_picsys->hw.lock);
        FUNC3(&p_picsys->hw.lock);
        FUNC1(p_picsys);
    }
    else
        FUNC5(&p_picsys->hw.lock);
}