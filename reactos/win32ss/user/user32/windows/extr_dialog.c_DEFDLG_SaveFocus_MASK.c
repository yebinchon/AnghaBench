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
struct TYPE_3__ {scalar_t__ hwndFocus; } ;
typedef  scalar_t__ HWND ;
typedef  TYPE_1__ DIALOGINFO ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3( HWND hwnd )
{
    DIALOGINFO *infoPtr;
    HWND hwndFocus = FUNC1();

    if (!hwndFocus || !FUNC2( hwnd, hwndFocus )) return;
    if (!(infoPtr = FUNC0(hwnd))) return;
    infoPtr->hwndFocus = hwndFocus;
    /* Remove default button */
}