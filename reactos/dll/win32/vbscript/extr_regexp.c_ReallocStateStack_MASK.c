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
struct TYPE_3__ {size_t stateStackLimit; int /*<<< orphan*/  ok; int /*<<< orphan*/  cx; int /*<<< orphan*/  stateStack; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  REProgState ;
typedef  TYPE_1__ REGlobalData ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC2(REGlobalData *gData)
{
    size_t limit = gData->stateStackLimit;
    size_t sz = sizeof(REProgState) * limit;

    gData->stateStack = FUNC0(gData->pool, gData->stateStack, sz, sz);
    if (!gData->stateStack) {
        FUNC1(gData->cx);
        gData->ok = FALSE;
        return FALSE;
    }
    gData->stateStackLimit = limit + limit;
    return TRUE;
}