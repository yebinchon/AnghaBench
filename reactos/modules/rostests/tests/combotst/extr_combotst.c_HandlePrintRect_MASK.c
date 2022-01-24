#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int BUFFERLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__) ; 
 int /*<<< orphan*/  ResultX ; 
 int /*<<< orphan*/  ResultY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* TextBuffer ; 
 int /*<<< orphan*/  g_hwnd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
VOID
FUNC4(HWND handle,DWORD Msg,WPARAM wParam,LPARAM lParam)
    {
    RECT rect = *(RECT*)lParam;
    TextBuffer[8] = (char)(BUFFERLEN - 8); /* Setting the max size to put chars in first byte */
    FUNC2(handle,Msg,wParam,lParam);

    FUNC3(rect.top,&TextBuffer[8]);
    TextBuffer[8+8] = ' ';
    FUNC3(rect.bottom,&TextBuffer[8+8+1]);
    TextBuffer[8+8+8+1] = ' ';
    FUNC3(rect.left,&TextBuffer[8+8+8+1+1]);
    TextBuffer[8+8+8+8+1+1] = ' ';
    FUNC3(rect.right,&TextBuffer[8+8+8+8+1+1+1]);

    FUNC0(g_hwnd,&rect);
    FUNC1(TextBuffer,ResultX,ResultY,8+4*9-1,rect);
    }