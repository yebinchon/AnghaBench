#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IEnumGUID_iface; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  REFCLSID ;
typedef  char* LPCWSTR ;
typedef  TYPE_1__ IEnumGUID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ CATID_IEnumGUIDImpl ;

/* Variables and functions */
 int /*<<< orphan*/  CATIDEnumGUIDVtbl ; 
 int CHARS_IN_GUID ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(REFCLSID rclsid, LPCWSTR postfix, IEnumGUID **ret)
{
    static const WCHAR prefixW[] = {'C','L','S','I','D','\\',0};
    WCHAR keyname[100], clsidW[CHARS_IN_GUID];
    CATID_IEnumGUIDImpl *This;

    *ret = NULL;

    This = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(CATID_IEnumGUIDImpl));
    if (!This) return E_OUTOFMEMORY;

    FUNC2(rclsid, clsidW, CHARS_IN_GUID);

    This->IEnumGUID_iface.lpVtbl = &CATIDEnumGUIDVtbl;
    This->ref = 1;
    FUNC4(keyname, prefixW);
    FUNC3(keyname, clsidW);
    FUNC3(keyname, postfix);

    FUNC5(HKEY_CLASSES_ROOT, keyname, KEY_READ, &This->key);

    *ret = &This->IEnumGUID_iface;
    return S_OK;
}