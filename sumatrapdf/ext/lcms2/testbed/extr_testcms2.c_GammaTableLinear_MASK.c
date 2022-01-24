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
typedef  void* cmsUInt16Number ;
struct TYPE_4__ {void** Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  scalar_t__ cmsInt32Number ;
typedef  scalar_t__ cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsToneCurve* FUNC3(cmsInt32Number nEntries, cmsBool Dir)
{
    cmsInt32Number i;
    cmsToneCurve* g = FUNC2(FUNC0(), nEntries, NULL);

    for (i=0; i < nEntries; i++) {

        cmsInt32Number v = FUNC1(i, nEntries);

        if (Dir)
            g->Table16[i] = (cmsUInt16Number) v;
        else
            g->Table16[i] = (cmsUInt16Number) (0xFFFF - v);
    }

    return g;
}