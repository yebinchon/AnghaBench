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
struct TYPE_3__ {int style; char* lpszClassName; int /*<<< orphan*/  lpfnWndProc; int /*<<< orphan*/ * lpszMenuName; int /*<<< orphan*/  hbrBackground; int /*<<< orphan*/  hCursor; int /*<<< orphan*/ * hIcon; int /*<<< orphan*/  hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_WINDOW ; 
 int CS_HREDRAW ; 
 int CS_VREDRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_IBEAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  parent_wndproc ; 

__attribute__((used)) static BOOL FUNC4(void)
{
    WNDCLASSA wc;

    wc.style = CS_HREDRAW | CS_VREDRAW;
    wc.cbClsExtra = 0;
    wc.cbWndExtra = 0;
    wc.hInstance = FUNC0(NULL);
    wc.hIcon = NULL;
    wc.hCursor = FUNC2(NULL, (LPCSTR)IDC_IBEAM);
    wc.hbrBackground = FUNC1(COLOR_WINDOW);
    wc.lpszMenuName = NULL;
    wc.lpszClassName = "MyTestWnd";
    wc.lpfnWndProc = parent_wndproc;

    return FUNC3(&wc);
}