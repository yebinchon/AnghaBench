#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  struct _cms_typehandler_struct* cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
void* FUNC3(cmsContext ContextID, struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsToneCurve** OldCurves =  (cmsToneCurve**) Ptr;
    cmsToneCurve** NewCurves;
    FUNC2(self);

    NewCurves = ( cmsToneCurve**) FUNC0(ContextID, 3, sizeof(cmsToneCurve*));
    if (NewCurves == NULL) return NULL;

    NewCurves[0] = FUNC1(ContextID, OldCurves[0]);
    NewCurves[1] = FUNC1(ContextID, OldCurves[1]);
    NewCurves[2] = FUNC1(ContextID, OldCurves[2]);

    return (void*) NewCurves;

    FUNC2(n);
}