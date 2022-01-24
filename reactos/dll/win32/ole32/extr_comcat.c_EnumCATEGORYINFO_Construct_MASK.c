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
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IEnumCATEGORYINFO_iface; int /*<<< orphan*/  key; int /*<<< orphan*/  lcid; } ;
typedef  int /*<<< orphan*/  LCID ;
typedef  TYPE_1__ IEnumCATEGORYINFOImpl ;
typedef  TYPE_2__ IEnumCATEGORYINFO ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  COMCAT_IEnumCATEGORYINFO_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(LCID lcid, IEnumCATEGORYINFO **ret)
{
    static const WCHAR keyname[] = {'C','o','m','p','o','n','e','n','t',' ','C','a','t','e','g','o','r','i','e','s',0};
    IEnumCATEGORYINFOImpl *This;

    *ret = NULL;

    This = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(IEnumCATEGORYINFOImpl));
    if (!This) return E_OUTOFMEMORY;

    This->IEnumCATEGORYINFO_iface.lpVtbl = &COMCAT_IEnumCATEGORYINFO_Vtbl;
    This->ref = 1;
    This->lcid = lcid;
    FUNC2(HKEY_CLASSES_ROOT, keyname, KEY_READ, &This->key);

    *ret = &This->IEnumCATEGORYINFO_iface;
    return S_OK;
}