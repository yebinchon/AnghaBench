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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IHTMLTableRow ;
typedef  int /*<<< orphan*/  IHTMLTable ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLTableRow ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(IHTMLTable *table)
{
    IDispatch *disp;
    IHTMLTableRow *row;
    HRESULT hres;
    LONG index;

    FUNC7(table, 2);

    hres = FUNC5(table, 0, &disp);
    FUNC6(hres == S_OK, "insertRow failed: %08x\n", hres);
    FUNC6(disp != NULL, "disp == NULL\n");
    FUNC7(table, 3);
    if (hres != S_OK || disp == NULL)
        return;

    hres = FUNC0(disp, &IID_IHTMLTableRow, (void**)&row);
    FUNC1(disp);

    FUNC6(hres == S_OK, "QueryInterface failed: %08x\n", hres);
    FUNC6(row != NULL, "row == NULL\n");

    index = 0xdeadbeef;
    hres = FUNC3(row, &index);
    FUNC6(hres == S_OK, "get_rowIndex failed: %08x\n", hres);
    FUNC6(index == 0, "index = %d, expected 0\n", index);

    FUNC2(row);

    hres = FUNC4(table, 0);
    FUNC6(hres == S_OK, "deleteRow failed: %08x\n", hres);
    FUNC7(table, 2);
}