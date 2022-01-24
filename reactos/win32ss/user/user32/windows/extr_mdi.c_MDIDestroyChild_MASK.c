#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {scalar_t__ nActiveChildren; scalar_t__ hwndActiveChild; scalar_t__ hwndChildMaximized; scalar_t__* child; int /*<<< orphan*/  hBmpClose; } ;
typedef  TYPE_1__ MDICLIENTINFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ SB_BOTH ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_MDIREFRESHMENU ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,scalar_t__*,size_t) ; 

__attribute__((used)) static LRESULT FUNC15( HWND client, MDICLIENTINFO *ci,
                                HWND child, BOOL flagDestroy )
{
    UINT i;

    FUNC13("# of managed children %u\n", ci->nActiveChildren);

    if( child == ci->hwndActiveChild )
    {
        HWND next = FUNC6(ci, child, TRUE, 0);
        if (next)
            FUNC9(ci, next, TRUE);
        else
        {
            FUNC12(child, SW_HIDE);
            if (child == ci->hwndChildMaximized)
            {
                HWND frame = FUNC1(client);
                FUNC8(frame, child, ci->hBmpClose);
                ci->hwndChildMaximized = 0;
                FUNC10(frame, client, TRUE, NULL);
            }
            if (flagDestroy)
                FUNC5(client, 0);
        }
    }

    for (i = 0; i < ci->nActiveChildren; i++)
    {
        if (ci->child[i] == child)
        {
            HWND *new_child = FUNC3(FUNC2(), 0, (ci->nActiveChildren - 1) * sizeof(HWND));
            if (new_child != NULL)
            {
                FUNC14(new_child, ci->child, i * sizeof(HWND));
                if (i + 1 < ci->nActiveChildren)
                    FUNC14(new_child + i, ci->child + i + 1, (ci->nActiveChildren - i - 1) * sizeof(HWND));
                FUNC4(FUNC2(), 0, ci->child);
                ci->child = new_child;
            }
            else
            {
                UINT c;
                for (c = i; c < ci->nActiveChildren - 1; c++)
                {
                    ci->child[c] = ci->child[c+1];
                }
            }

            ci->nActiveChildren--;
            break;
        }
    }

    if (flagDestroy)
    {
        FUNC11(client, WM_MDIREFRESHMENU, 0, 0);
        FUNC7(FUNC1(child), ci, SB_BOTH+1);
        FUNC0(child);
    }

    FUNC13("child destroyed - %p\n", child);
    return 0;
}