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
struct TYPE_3__ {unsigned int stateLog; int /*<<< orphan*/  symbolTT; } ;
typedef  int /*<<< orphan*/  FSE_CTable ;
typedef  TYPE_1__ FSE_CState_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int const,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int const,unsigned int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  GENERIC ; 
 unsigned int const FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static size_t FUNC5(
    FSE_CTable const* ctable,
    unsigned const* count,
    unsigned const max)
{
    unsigned const kAccuracyLog = 8;
    size_t cost = 0;
    unsigned s;
    FSE_CState_t cstate;
    FUNC3(&cstate, ctable);
    if (FUNC4(ctable) < max) {
        FUNC0(5, "Repeat FSE_CTable has maxSymbolValue %u < %u",
                    FUNC4(ctable), max);
        return FUNC1(GENERIC);
    }
    for (s = 0; s <= max; ++s) {
        unsigned const tableLog = cstate.stateLog;
        unsigned const badCost = (tableLog + 1) << kAccuracyLog;
        unsigned const bitCost = FUNC2(cstate.symbolTT, tableLog, s, kAccuracyLog);
        if (count[s] == 0)
            continue;
        if (bitCost >= badCost) {
            FUNC0(5, "Repeat FSE_CTable has Prob[%u] == 0", s);
            return FUNC1(GENERIC);
        }
        cost += count[s] * bitCost;
    }
    return cost >> kAccuracyLog;
}