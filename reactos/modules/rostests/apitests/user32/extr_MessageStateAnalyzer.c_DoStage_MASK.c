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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int nType; size_t* iActions; size_t nCount; int /*<<< orphan*/  uParentMsg; int /*<<< orphan*/  nLine; int /*<<< orphan*/  nLevel; int /*<<< orphan*/ * uMessages; } ;
typedef  TYPE_1__ STAGE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARENT_MSG ; 
#define  STAGE_TYPE_COUNTING 129 
#define  STAGE_TYPE_SEQUENCE 128 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ s_bNextStage ; 
 size_t s_cStages ; 
 size_t s_iStage ; 
 size_t s_iStep ; 
 int /*<<< orphan*/ * s_nCounters ; 
 int /*<<< orphan*/  s_nLevel ; 
 TYPE_1__* s_pStages ; 

__attribute__((used)) static void FUNC4(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    INT i, iAction;
    const STAGE *pStage;
    s_bNextStage = FALSE;

    if (s_iStage >= s_cStages)
        return;

    pStage = &s_pStages[s_iStage];
    switch (pStage->nType)
    {
        case STAGE_TYPE_SEQUENCE:
            if (pStage->uMessages[s_iStep] == uMsg)
            {
                FUNC3(1, 1);
                FUNC2(s_nLevel == pStage->nLevel,
                   "Line %d, Step %d: Level expected %d but %d.\n",
                   pStage->nLine, s_iStep, pStage->nLevel, s_nLevel);
                FUNC2(PARENT_MSG == pStage->uParentMsg,
                   "Line %d, Step %d: PARENT_MSG expected %u but %u.\n",
                   pStage->nLine, s_iStep, pStage->uParentMsg, PARENT_MSG);

                iAction = pStage->iActions[s_iStep];
                if (iAction)
                    FUNC0(hwnd, iAction, wParam, lParam);

                ++s_iStep;
                if (s_iStep >= pStage->nCount)
                    s_bNextStage = TRUE;
            }
            break;
        case STAGE_TYPE_COUNTING:
            for (i = 0; i < pStage->nCount; ++i)
            {
                if (pStage->uMessages[i] == uMsg)
                {
                    FUNC3(1, 1);
                    FUNC2(s_nLevel == pStage->nLevel,
                       "Line %d: Level expected %d but %d.\n",
                       pStage->nLine, pStage->nLevel, s_nLevel);
                    FUNC2(PARENT_MSG == pStage->uParentMsg,
                       "Line %d: PARENT_MSG expected %u but %u.\n",
                       pStage->nLine, pStage->uParentMsg, PARENT_MSG);

                    iAction = pStage->iActions[i];
                    if (iAction)
                        FUNC0(hwnd, iAction, wParam, lParam);

                    ++s_nCounters[i];

                    if (i == pStage->nCount - 1)
                        s_bNextStage = TRUE;
                    break;
                }
            }
            break;
    }

    if (s_bNextStage)
    {
        FUNC1(hwnd);
    }
}