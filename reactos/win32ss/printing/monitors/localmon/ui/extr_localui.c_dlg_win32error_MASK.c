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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_LOCALPORT ; 
 int IDS_LOCALPORT_MAXLEN ; 
 int /*<<< orphan*/  LOCALUI_hInstance ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC4(HWND hWnd, DWORD lasterror)
{
    WCHAR res_PortW[IDS_LOCALPORT_MAXLEN];
    LPWSTR  message = NULL;
    DWORD   res;

    res_PortW[0] = '\0';
    FUNC1(LOCALUI_hInstance, IDS_LOCALPORT, res_PortW, IDS_LOCALPORT_MAXLEN);


    res = FUNC0(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                        NULL, lasterror, 0, (LPWSTR) &message, 0, NULL);

    if (res > 0) {
        FUNC3(hWnd, message, res_PortW, MB_OK | MB_ICONERROR);
        FUNC2(message);
    }
}