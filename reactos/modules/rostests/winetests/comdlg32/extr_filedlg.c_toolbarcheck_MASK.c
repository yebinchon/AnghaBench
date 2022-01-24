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
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_ADDSTRINGA ; 
 int /*<<< orphan*/  TB_GETTEXTROWS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6( HWND hDlg)
{
    /* test toolbar properties */
    /* bug #10532 */
    int maxtextrows;
    HWND ctrl;
    DWORD ret;
    char classname[20];

    for( ctrl = FUNC1( hDlg, GW_CHILD);
            ctrl ; ctrl = FUNC1( ctrl, GW_HWNDNEXT)) {
        FUNC0( ctrl, classname, 10);
        classname[7] = '\0';
        if( !FUNC5( classname, "Toolbar")) break;
    }
    FUNC4( ctrl != NULL, "could not get the toolbar control\n");
    ret = FUNC2( ctrl, TB_ADDSTRINGA, 0, (LPARAM)"winetestwinetest\0\0");
    FUNC4( ret == 0, "addstring returned %d (expected 0)\n", ret);
    maxtextrows = FUNC2( ctrl, TB_GETTEXTROWS, 0, 0);
    FUNC4( maxtextrows == 0 || FUNC3(maxtextrows == 1),  /* Win2k and below */
        "Get(Max)TextRows returned %d (expected 0)\n", maxtextrows);
}