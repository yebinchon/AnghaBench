#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  params; int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ winnerInfo_t ;
struct TYPE_17__ {int /*<<< orphan*/ * vals; } ;
typedef  TYPE_2__ paramValues_t ;
typedef  int /*<<< orphan*/  memoTable_t ;
typedef  int /*<<< orphan*/  contexts_t ;
typedef  int /*<<< orphan*/  constraint_t ;
struct TYPE_18__ {int /*<<< orphan*/  srcSize; int /*<<< orphan*/  maxBlockSize; } ;
typedef  TYPE_3__ buffers_t ;
typedef  int /*<<< orphan*/  ZSTD_strategy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  CUSTOM_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ FUNC3 (TYPE_2__) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ *,TYPE_3__ const,int /*<<< orphan*/  const,TYPE_2__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC9 (TYPE_2__,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 size_t strt_ind ; 

__attribute__((used)) static winnerInfo_t
FUNC10(const buffers_t buf, const contexts_t ctx,
                      const constraint_t target, paramValues_t paramTarget,
                      const ZSTD_strategy strat,
                      memoTable_t* memoTableArray, const int tries)
{
    int i = 0;

    paramValues_t init;
    winnerInfo_t winnerInfo, candidateInfo;
    winnerInfo = FUNC7(FUNC6());
    /* so climb is given the right fixed strategy */
    paramTarget.vals[strt_ind] = strat;
    /* to pass ZSTD_checkCParams */
    paramTarget = FUNC3(paramTarget);

    init = paramTarget;

    for(i = 0; i < tries; i++) {
        FUNC2("Restart\n");
        do {
            FUNC8(&init, memoTableArray, strat);
        } while(FUNC9(init, target, buf.maxBlockSize));
        candidateInfo = FUNC4(target, memoTableArray, buf, ctx, init);
        if (FUNC5(winnerInfo.result, candidateInfo.result, target, buf.srcSize)) {
            winnerInfo = candidateInfo;
            FUNC0(stdout, CUSTOM_LEVEL, winnerInfo.result, winnerInfo.params, target, buf.srcSize);
            i = 0;
            continue;
        }
        FUNC1(winnerInfo);
        i++;
    }
    return winnerInfo;
}