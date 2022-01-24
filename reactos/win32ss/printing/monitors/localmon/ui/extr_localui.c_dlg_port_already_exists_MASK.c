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
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IDS_LOCALPORT ; 
 int IDS_LOCALPORT_MAXLEN ; 
 int /*<<< orphan*/  IDS_PORTEXISTS ; 
 int IDS_PORTEXISTS_MAXLEN ; 
 int /*<<< orphan*/  LOCALUI_hInstance ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(HWND hWnd, LPCWSTR portname)
{
    WCHAR res_PortW[IDS_LOCALPORT_MAXLEN];
    WCHAR res_PortExistsW[IDS_PORTEXISTS_MAXLEN];
    LPWSTR  message;
    DWORD   len;

    res_PortW[0] = '\0';
    res_PortExistsW[0] = '\0';
    FUNC3(LOCALUI_hInstance, IDS_LOCALPORT, res_PortW, IDS_LOCALPORT_MAXLEN);
    FUNC3(LOCALUI_hInstance, IDS_PORTEXISTS, res_PortExistsW, IDS_PORTEXISTS_MAXLEN);

    len = FUNC5(portname) + IDS_PORTEXISTS_MAXLEN + 1;
    message = FUNC1(FUNC0(), 0, len * sizeof(WCHAR));
    if (message) {
        message[0] = '\0';
        FUNC6(message, len, res_PortExistsW, portname);
        FUNC4(hWnd, message, res_PortW, MB_OK | MB_ICONERROR);
        FUNC2(FUNC0(), 0, message);
    }
}