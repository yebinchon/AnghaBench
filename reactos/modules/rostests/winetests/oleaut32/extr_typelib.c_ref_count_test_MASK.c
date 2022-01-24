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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(LPCWSTR type_lib)
{
    ITypeLib *iface;
    ITypeInfo *iti1, *iti2;
    HRESULT hRes;
    int ref_count;

    FUNC6("Loading type library\n");
    hRes = FUNC4(type_lib, &iface);
    FUNC5(hRes == S_OK, "Could not load type library\n");
    if(hRes != S_OK)
        return;

    hRes = FUNC2(iface, 1, &iti1);
    FUNC5(hRes == S_OK, "ITypeLib_GetTypeInfo failed on index = 1\n");
    ref_count = FUNC3(iface);
    FUNC5(ref_count > 0, "ITypeLib destroyed while ITypeInfo has back pointer\n");
    if(!ref_count)
        return;

    hRes = FUNC2(iface, 1, &iti2);
    FUNC5(hRes == S_OK, "ITypeLib_GetTypeInfo failed on index = 1\n");
    FUNC5(iti1 == iti2, "ITypeLib_GetTypeInfo returned different pointers for same indexes\n");

    FUNC1(iface);
    FUNC0(iti2);
    FUNC0(iti1);
    FUNC5(FUNC3(iface) == 0, "ITypeLib should be destroyed here.\n");
}