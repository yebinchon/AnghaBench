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
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_HTMLDocument ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  typelib ; 

HRESULT FUNC4(ITypeInfo **typeinfo)
{
    HRESULT hres;

    if (!typelib)
        hres = FUNC3();
    if (!typelib)
        return hres;

    hres = FUNC2(typelib, &CLSID_HTMLDocument, typeinfo);
    if(FUNC1(hres))
        FUNC0("GetTypeInfoOfGuid failed: %08x\n", hres);
    return hres;
}