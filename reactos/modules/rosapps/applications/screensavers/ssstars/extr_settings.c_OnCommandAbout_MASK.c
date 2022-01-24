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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HINSTANCE ;
typedef  int /*<<< orphan*/  HICON ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDI_STARFIELD ; 
 int /*<<< orphan*/  IDS_AUTHOR ; 
 int /*<<< orphan*/  IDS_DESCRIPTION ; 
 int /*<<< orphan*/  IDS_LICENSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC8(HWND hWnd)
{
    HINSTANCE hInstance;
    HICON     hIcon;
    TCHAR     szAppName[256];
    TCHAR     szAuthor[256];
    TCHAR     szLicense[1024];

    hInstance = (HINSTANCE)FUNC0(hWnd, GWLP_HINSTANCE);

    hIcon = FUNC1(hInstance, FUNC3(IDI_STARFIELD));

    FUNC2(hInstance, IDS_DESCRIPTION, szAppName, FUNC4(szAppName));
    FUNC2(hInstance, IDS_AUTHOR,      szAuthor,  FUNC4(szAuthor));
    FUNC2(hInstance, IDS_LICENSE,     szLicense, FUNC4(szLicense));

    FUNC7(szAppName, FUNC6("#"));
    FUNC7(szAppName, szAuthor);

    FUNC5(hWnd, szAppName, szLicense, hIcon);

    return TRUE;
}