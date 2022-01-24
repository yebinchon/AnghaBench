#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  constraint_t ;
struct TYPE_7__ {scalar_t__ cSize; scalar_t__ cSpeed; scalar_t__ dSpeed; } ;
typedef  TYPE_1__ BMK_benchResult_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  g_lvltarget ; 
 scalar_t__ g_optmode ; 
 scalar_t__ FUNC1 (TYPE_1__ const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const,size_t,int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC3(const BMK_benchResult_t result1, const BMK_benchResult_t result2, const constraint_t target, size_t srcSize)
{
    if(FUNC0(result1, target) && FUNC0(result2, target)) {
        if(g_optmode) {
            return FUNC1(result1, g_lvltarget) < FUNC1(result2, g_lvltarget);
        } else {
            return (result1.cSize > result2.cSize)
                || (result1.cSize == result2.cSize && result2.cSpeed > result1.cSpeed)
                || (result1.cSize == result2.cSize && result2.cSpeed == result1.cSpeed && result2.dSpeed > result1.dSpeed);
        }
    }
    return FUNC0(result2, target)
        || (!FUNC0(result1, target)
            && (FUNC2(result1, srcSize, target) < FUNC2(result2, srcSize, target)));
}