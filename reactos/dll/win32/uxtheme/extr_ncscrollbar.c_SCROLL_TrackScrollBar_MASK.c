#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ message; scalar_t__ wParam; int /*<<< orphan*/  lParam; } ;
struct TYPE_11__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  int /*<<< orphan*/  PWND_DATA ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__ MSG ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  MSGF_SCROLLBAR ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,TYPE_1__) ; 
 scalar_t__ SCROLL_TIMER ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ WM_LBUTTONDOWN ; 
 scalar_t__ WM_LBUTTONUP ; 
 scalar_t__ WM_MOUSEMOVE ; 
 scalar_t__ WM_SYSTIMER ; 

__attribute__((used)) static void 
FUNC13( HWND hwnd, INT scrollbar, POINT pt )
{
    MSG msg;
    PWND_DATA pwndData = FUNC11(hwnd);
    if(!pwndData)
        return;

    FUNC10(hwnd, &pt);

    FUNC9(pwndData, hwnd, scrollbar, WM_LBUTTONDOWN, pt );

    do
    {
        if (!FUNC6( &msg, 0, 0, 0 )) break;
        if (FUNC0( &msg, MSGF_SCROLLBAR )) continue;
        if (msg.message == WM_LBUTTONUP ||
            msg.message == WM_MOUSEMOVE ||
            (msg.message == WM_SYSTIMER && msg.wParam == SCROLL_TIMER))
        {
            pt.x = FUNC3(msg.lParam);
            pt.y = FUNC4(msg.lParam);
            FUNC1(hwnd, &pt);
            FUNC10(hwnd, &pt);
            FUNC9(pwndData, hwnd, scrollbar, msg.message, pt );
        }
        else
        {
            FUNC12( &msg );
            FUNC2( &msg );
        }
        if (!FUNC7( hwnd ))
        {
            FUNC8();
            break;
        }
    } while (msg.message != WM_LBUTTONUP && FUNC5() == hwnd);
}