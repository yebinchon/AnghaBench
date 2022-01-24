#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_6__ {int b_vd_ref; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_dec; } ;
struct TYPE_8__ {TYPE_1__ hw; } ;
typedef  TYPE_3__ picture_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(picture_t *p_pic)
{
    picture_sys_t *p_picsys = p_pic->p_sys;

    FUNC2(&p_picsys->hw.lock);
    p_picsys->hw.b_vd_ref = false;
    /* Release p_picsys if references from VOUT and from decoder are NULL */
    if (!p_picsys->hw.b_vd_ref && !p_picsys->hw.p_dec)
    {
        FUNC3(&p_picsys->hw.lock);
        FUNC1(&p_picsys->hw.lock);
        FUNC0(p_picsys);
    }
    else
        FUNC3(&p_picsys->hw.lock);
}