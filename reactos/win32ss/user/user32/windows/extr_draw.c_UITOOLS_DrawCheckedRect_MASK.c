#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ hbrGray; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__* LPRECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  scalar_t__ COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_BTNFACE ; 
 int /*<<< orphan*/  COLOR_BTNHIGHLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* gpsi ; 

__attribute__((used)) static void FUNC7( HDC dc, LPRECT rect )
{
    if(FUNC1(COLOR_BTNHIGHLIGHT) == FUNC4(255, 255, 255))
    {
        HBRUSH hbsave;
        COLORREF bg;

        FUNC0(dc, rect, FUNC2(COLOR_BTNFACE));
        bg = FUNC6(dc, FUNC4(255, 255, 255));
        hbsave = (HBRUSH)FUNC5(dc, gpsi->hbrGray);
        FUNC3(dc, rect->left, rect->top, rect->right-rect->left, rect->bottom-rect->top, 0x00FA0089);
        FUNC5(dc, hbsave);
        FUNC6(dc, bg);
    }
    else
    {
        FUNC0(dc, rect, FUNC2(COLOR_BTNHIGHLIGHT));
    }
}