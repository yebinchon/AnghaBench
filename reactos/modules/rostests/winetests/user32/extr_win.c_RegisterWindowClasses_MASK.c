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
struct TYPE_5__ {int /*<<< orphan*/  lpszClassName; int /*<<< orphan*/ * lpszMenuName; void* hbrBackground; void* hCursor; scalar_t__ hIcon; void* hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int /*<<< orphan*/  lpfnWndProc; void* style; } ;
typedef  TYPE_1__ WNDCLASSW ;
struct TYPE_6__ {char* lpszClassName; int /*<<< orphan*/ * lpszMenuName; void* hbrBackground; void* hCursor; scalar_t__ hIcon; void* hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int /*<<< orphan*/  lpfnWndProc; void* style; } ;
typedef  TYPE_2__ WNDCLASSA ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 void* CS_DBLCLKS ; 
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_ARROW ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  main_window_procA ; 
 int /*<<< orphan*/  main_window_procW ; 
 int /*<<< orphan*/  mainclassW ; 
 int /*<<< orphan*/  tool_window_procA ; 

__attribute__((used)) static BOOL FUNC5(void)
{
    WNDCLASSW clsW;
    WNDCLASSA cls;

    cls.style = CS_DBLCLKS;
    cls.lpfnWndProc = main_window_procA;
    cls.cbClsExtra = 0;
    cls.cbWndExtra = 0;
    cls.hInstance = FUNC0(0);
    cls.hIcon = 0;
    cls.hCursor = FUNC2(0, (LPCSTR)IDC_ARROW);
    cls.hbrBackground = FUNC1(WHITE_BRUSH);
    cls.lpszMenuName = NULL;
    cls.lpszClassName = "MainWindowClass";

    if(!FUNC3(&cls)) return FALSE;

    clsW.style = CS_DBLCLKS;
    clsW.lpfnWndProc = main_window_procW;
    clsW.cbClsExtra = 0;
    clsW.cbWndExtra = 0;
    clsW.hInstance = FUNC0(0);
    clsW.hIcon = 0;
    clsW.hCursor = FUNC2(0, (LPCSTR)IDC_ARROW);
    clsW.hbrBackground = FUNC1(WHITE_BRUSH);
    clsW.lpszMenuName = NULL;
    clsW.lpszClassName = mainclassW;

    if(!FUNC4(&clsW)) return FALSE;

    cls.style = 0;
    cls.lpfnWndProc = tool_window_procA;
    cls.cbClsExtra = 0;
    cls.cbWndExtra = 0;
    cls.hInstance = FUNC0(0);
    cls.hIcon = 0;
    cls.hCursor = FUNC2(0, (LPCSTR)IDC_ARROW);
    cls.hbrBackground = FUNC1(WHITE_BRUSH);
    cls.lpszMenuName = NULL;
    cls.lpszClassName = "ToolWindowClass";

    if(!FUNC3(&cls)) return FALSE;

    return TRUE;
}