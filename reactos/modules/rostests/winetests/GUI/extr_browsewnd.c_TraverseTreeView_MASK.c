#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {int /*<<< orphan*/  hBrowseTV; } ;
typedef  TYPE_1__* PMAIN_WND_INFO ;
typedef  int /*<<< orphan*/ * HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC5(PMAIN_WND_INFO pInfo,
                 HTREEITEM hItem)
{
    while (FUNC1(pInfo, hItem))
    {
        HTREEITEM hChildItem;

        FUNC0(pInfo, hItem);

        hChildItem = FUNC2(pInfo->hBrowseTV,
                                       hItem);

        FUNC5(pInfo,
                         hChildItem);

        hItem = FUNC3(pInfo->hBrowseTV,
                                        hItem);
    }

    if (hItem)
    {
        /* loop the child items and free the tags */
        while (TRUE)
        {
            HTREEITEM hOldItem;

            FUNC0(pInfo, hItem);
            hOldItem = hItem;
            hItem = FUNC3(pInfo->hBrowseTV,
                                            hItem);
            if (hItem == NULL)
            {
                hItem = hOldItem;
                break;
            }
        }

        hItem = FUNC4(pInfo->hBrowseTV,
                                   hItem);
    }
}