#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  RECT ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ResultX ; 
 int /*<<< orphan*/  ResultY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * TextBuffer ; 
 int /*<<< orphan*/  g_hwnd ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
VOID
FUNC4(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
    LRESULT ret;
    RECT rect;
    ret = FUNC2(handle,Msg,wParam,lParam);
    FUNC3((unsigned int)ret,&TextBuffer[8]);
    FUNC0(g_hwnd,&rect);
    FUNC1(TextBuffer,ResultX,ResultY,16,rect);
    }