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
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WC_EDITW ; 
 int /*<<< orphan*/  hinst ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static HWND FUNC2(DWORD style, DWORD exstyle)
{
    static const WCHAR testtextW[] = {'T','e','s','t',' ','t','e','x','t',0};
    HWND handle;

    handle = FUNC0(exstyle, WC_EDITW, testtextW, style, 10, 10, 300, 300,
        NULL, NULL, hinst, NULL);
    FUNC1(handle != NULL, "Failed to create Edit control.\n");
    return handle;
}