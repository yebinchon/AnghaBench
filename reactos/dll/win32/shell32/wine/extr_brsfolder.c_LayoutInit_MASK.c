#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ height; scalar_t__ bottom; scalar_t__ top; scalar_t__ width; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_10__ {int /*<<< orphan*/  iItemId; } ;
struct TYPE_9__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  TYPE_2__ LAYOUT_INFO ;
typedef  TYPE_3__ LAYOUT_DATA ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  HWND_DESKTOP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC5 (int) ; 

__attribute__((used)) static LAYOUT_DATA *FUNC6(HWND hwnd, const LAYOUT_INFO *layout_info, int layout_count)
{
    LAYOUT_DATA *data;
    RECT rcWnd;
    int i;

    FUNC1(hwnd, &rcWnd);
    data = FUNC5(sizeof(LAYOUT_DATA)*layout_count);
    for (i = 0; i < layout_count; i++)
    {
        RECT r;
        HWND hItem = FUNC2(hwnd, layout_info[i].iItemId);

        if (hItem == NULL)
            FUNC0("Item %d not found\n", i);
        FUNC3(hItem, &r);
        FUNC4(HWND_DESKTOP, hwnd, (LPPOINT)&r, 2);

        data[i].left = r.left;
        data[i].right = rcWnd.right - r.right;
        data[i].width = r.right - r.left;

        data[i].top = r.top;
        data[i].bottom = rcWnd.bottom - r.bottom;
        data[i].height = r.bottom - r.top;
    }
    return data;
}