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
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IOmNavigator ;
typedef  int /*<<< orphan*/  IHTMLMimeTypesCollection ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  IID_IHTMLMimeTypesCollection ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(IOmNavigator *nav)
{
    IHTMLMimeTypesCollection *col, *col2;
    LONG length;
    ULONG ref;
    HRESULT hres;

    hres = FUNC2(nav, &col);
    FUNC4(hres == S_OK, "get_mimeTypes failed: %08x\n", hres);

    hres = FUNC2(nav, &col2);
    FUNC4(hres == S_OK, "get_mimeTypes failed: %08x\n", hres);
    FUNC4(FUNC3((IUnknown*)col, (IUnknown*)col2), "col != col2\n");
    FUNC0(col2);

    FUNC5((IUnknown*)col, &IID_IHTMLMimeTypesCollection, "[object]");

    length = 0xdeadbeef;
    hres = FUNC1(col, &length);
    FUNC4(hres == S_OK, "get_length failed: %08x\n", hres);
    FUNC4(!length, "length = %d\n", length);

    ref = FUNC0(col);
    FUNC4(!ref, "ref=%d\n", ref);
}