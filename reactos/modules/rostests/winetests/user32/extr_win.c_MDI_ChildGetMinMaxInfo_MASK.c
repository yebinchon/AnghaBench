#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_12__ {TYPE_2__ ptMaxPosition; TYPE_1__ ptMaxSize; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__ MINMAXINFO ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5( HWND client, HWND hwnd, MINMAXINFO* lpMinMax )
{
    RECT rect;

    FUNC1( client, &rect );
    FUNC0( &rect, FUNC2( hwnd, GWL_STYLE ),
                        0, FUNC2( hwnd, GWL_EXSTYLE ));

    rect.right -= rect.left;
    rect.bottom -= rect.top;
    lpMinMax->ptMaxSize.x = rect.right;
    lpMinMax->ptMaxSize.y = rect.bottom;

    lpMinMax->ptMaxPosition.x = rect.left;
    lpMinMax->ptMaxPosition.y = rect.top;

    FUNC3("max rect %s\n", FUNC4(&rect));
}