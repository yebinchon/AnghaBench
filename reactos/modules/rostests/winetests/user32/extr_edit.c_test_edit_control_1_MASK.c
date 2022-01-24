#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int wParam; int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ MSG ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int DLGC_HASSETSEL ; 
 int DLGC_WANTALLKEYS ; 
 int DLGC_WANTARROWS ; 
 int DLGC_WANTCHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ES_AUTOHSCROLL ; 
 int ES_AUTOVSCROLL ; 
 int ES_MULTILINE ; 
 int ES_WANTRETURN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETDLGCODE ; 
 int /*<<< orphan*/  WM_KEYDOWN ; 
 int WS_VSCROLL ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HWND hwEdit;
    MSG msMessage;
    int i;
    LONG r;

    msMessage.message = WM_KEYDOWN;

    FUNC5("EDIT: Single line\n");
    hwEdit = FUNC2(ES_AUTOHSCROLL | ES_AUTOVSCROLL, 0);
    r = FUNC3(hwEdit);
    FUNC4(r == (ES_AUTOVSCROLL | ES_AUTOHSCROLL), "Wrong style expected 0xc0 got: 0x%x\n", r);
    for (i=0;i<65535;i++)
    {
	msMessage.wParam = i;
	r = FUNC1(hwEdit, WM_GETDLGCODE, 0, (LPARAM) &msMessage);
	FUNC4(r == (DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTARROWS),
            "Expected DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTARROWS got %x\n", r);
    }
    FUNC0 (hwEdit);

    FUNC5("EDIT: Single line want returns\n");
    hwEdit = FUNC2(ES_WANTRETURN | ES_AUTOHSCROLL | ES_AUTOVSCROLL, 0);
    r = FUNC3(hwEdit);
    FUNC4(r == (ES_AUTOVSCROLL | ES_AUTOHSCROLL | ES_WANTRETURN), "Wrong style expected 0x10c0 got: 0x%x\n", r);
    for (i=0;i<65535;i++)
    {
	msMessage.wParam = i;
	r = FUNC1(hwEdit, WM_GETDLGCODE, 0, (LPARAM) &msMessage);
	FUNC4(r == (DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTARROWS),
            "Expected DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTARROWS got %x\n", r);
    }
    FUNC0 (hwEdit);

    FUNC5("EDIT: Multiline line\n");
    hwEdit = FUNC2(ES_MULTILINE | WS_VSCROLL | ES_AUTOHSCROLL | ES_AUTOVSCROLL, 0);
    r = FUNC3(hwEdit);
    FUNC4(r == (ES_AUTOHSCROLL | ES_AUTOVSCROLL | ES_MULTILINE), "Wrong style expected 0xc4 got: 0x%x\n", r);
    for (i=0;i<65535;i++)
    {
	msMessage.wParam = i;
	r = FUNC1(hwEdit, WM_GETDLGCODE, 0, (LPARAM) &msMessage);
	FUNC4(r == (DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTALLKEYS | DLGC_WANTARROWS),
            "Expected DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTALLKEYS | DLGC_WANTARROWS got %x\n", r);
    }
    FUNC0 (hwEdit);

    FUNC5("EDIT: Multi line want returns\n");
    hwEdit = FUNC2(ES_MULTILINE | WS_VSCROLL | ES_WANTRETURN | ES_AUTOHSCROLL | ES_AUTOVSCROLL, 0);
    r = FUNC3(hwEdit);
    FUNC4(r == (ES_WANTRETURN | ES_AUTOHSCROLL | ES_AUTOVSCROLL | ES_MULTILINE), "Wrong style expected 0x10c4 got: 0x%x\n", r);
    for (i=0;i<65535;i++)
    {
	msMessage.wParam = i;
	r = FUNC1(hwEdit, WM_GETDLGCODE, 0, (LPARAM) &msMessage);
	FUNC4(r == (DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTALLKEYS | DLGC_WANTARROWS),
            "Expected DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTALLKEYS | DLGC_WANTARROWS got %x\n", r);
    }
    FUNC0 (hwEdit);
}