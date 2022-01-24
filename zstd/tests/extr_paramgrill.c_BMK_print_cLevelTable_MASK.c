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
struct TYPE_3__ {int /*<<< orphan*/  result; int /*<<< orphan*/  params; } ;
typedef  TYPE_1__ winnerInfo_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 
 int NB_LEVELS_TRACKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2(FILE* f, const winnerInfo_t* winners, const size_t srcSize)
{
    int cLevel;

    FUNC1(f, "\n /* Proposed configurations : */ \n");
    FUNC1(f, "   /* W,  C,  H,  S,  L,  T, strat */ \n");

    for (cLevel=0; cLevel <= NB_LEVELS_TRACKED; cLevel++)
        FUNC0(f,
                              cLevel, winners[cLevel].params,
                              winners[cLevel].result, srcSize);
}