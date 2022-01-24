#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * polesite; int /*<<< orphan*/ * pstg; int /*<<< orphan*/ * poleobj; } ;
typedef  TYPE_1__ REOBJECT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int REO_GETOBJ_POLEOBJ ; 
 int REO_GETOBJ_POLESITE ; 
 int REO_GETOBJ_PSTG ; 

void FUNC3(REOBJECT *dst, const REOBJECT *src, DWORD flags)
{
    *dst = *src;
    dst->poleobj = NULL;
    dst->pstg = NULL;
    dst->polesite = NULL;

    if ((flags & REO_GETOBJ_POLEOBJ) && src->poleobj)
    {
        dst->poleobj = src->poleobj;
        FUNC1(dst->poleobj);
    }
    if ((flags & REO_GETOBJ_PSTG) && src->pstg)
    {
        dst->pstg = src->pstg;
        FUNC2(dst->pstg);
    }
    if ((flags & REO_GETOBJ_POLESITE) && src->polesite)
    {
        dst->polesite = src->polesite;
        FUNC0(dst->polesite);
    }
}