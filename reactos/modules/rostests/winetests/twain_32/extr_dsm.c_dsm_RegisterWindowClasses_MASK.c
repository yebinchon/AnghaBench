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
struct TYPE_3__ {char* lpszClassName; int /*<<< orphan*/ * lpszMenuName; int /*<<< orphan*/  hbrBackground; int /*<<< orphan*/  hCursor; scalar_t__ hIcon; int /*<<< orphan*/  hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int /*<<< orphan*/  lpfnWndProc; scalar_t__ style; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DefWindowProcA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_ARROW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6(void)
{
    WNDCLASSA cls;
    BOOL rc;

    cls.style = 0;
    cls.lpfnWndProc = DefWindowProcA;
    cls.cbClsExtra = 0;
    cls.cbWndExtra = 0;
    cls.hInstance = FUNC1(0);
    cls.hIcon = 0;
    cls.hCursor = FUNC3(0, (LPCSTR)IDC_ARROW);
    cls.hbrBackground = FUNC2(WHITE_BRUSH);
    cls.lpszMenuName = NULL;
    cls.lpszClassName = "TWAIN_dsm_class";

    rc = FUNC4(&cls);
    FUNC5(rc, "RegisterClassA failed: le=%u\n", FUNC0());
    return rc;
}