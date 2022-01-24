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
typedef  size_t cmsUInt32Number ;
struct TYPE_4__ {int /*<<< orphan*/  nEntries; int /*<<< orphan*/  Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static
void FUNC3(cmsContext ContextID, cmsIOHANDLER* m, cmsUInt32Number n, cmsToneCurve* g[])
{
    cmsUInt32Number i;

    for( i=0; i < n; i++ )
    {
        if (g[i] == NULL) return; // Error

        if (i > 0 && FUNC1(g[i-1]->Table16, g[i]->Table16, g[i]->nEntries)) {

            FUNC2(ContextID, m, "dup ");
        }
        else {
            FUNC0(ContextID, m, g[i]);
        }
    }

}