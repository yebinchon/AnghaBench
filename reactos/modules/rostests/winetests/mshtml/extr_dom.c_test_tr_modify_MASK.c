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
typedef  int /*<<< orphan*/  IHTMLTableRow ;
typedef  int /*<<< orphan*/  IHTMLTableCell ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLTableCell ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC8(IHTMLElement *elem, IHTMLTableRow *row)
{
    HRESULT hres;
    IDispatch *disp;
    IHTMLTableCell *cell;

    hres = FUNC3(row, 0);
    FUNC6(hres == S_OK, "deleteCell failed: %08x\n", hres);
    FUNC7(elem, row, 1, "td2");

    hres = FUNC4(row, 0, &disp);
    FUNC6(hres == S_OK, "insertCell failed: %08x\n", hres);
    FUNC6(disp != NULL, "disp == NULL\n");
    hres = FUNC0(disp, &IID_IHTMLTableCell, (void **)&cell);
    FUNC6(hres == S_OK, "Could not get IID_IHTMLTableCell interface: %08x\n", hres);
    FUNC6(cell != NULL, "cell == NULL\n");
    if (FUNC5(hres))
        FUNC2(cell);
    FUNC7(elem, row, 2, "td2");
    FUNC1(disp);
}