#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_2__ IEnumGUID_iface; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ ProfilesEnumGuid ;
typedef  TYPE_2__ IEnumGUID ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  EnumGUIDVtbl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  szwSystemTIPKey ; 

__attribute__((used)) static HRESULT FUNC5(IEnumGUID **ppOut)
{
    ProfilesEnumGuid *This;

    This = FUNC1(FUNC0(),HEAP_ZERO_MEMORY,sizeof(ProfilesEnumGuid));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->IEnumGUID_iface.lpVtbl= &EnumGUIDVtbl;
    This->refCount = 1;

    if (FUNC3(HKEY_LOCAL_MACHINE, szwSystemTIPKey, 0, NULL, 0,
                    KEY_READ | KEY_WRITE, NULL, &This->key, NULL) != ERROR_SUCCESS)
    {
        FUNC2(FUNC0(), 0, This);
        return E_FAIL;
    }

    *ppOut = &This->IEnumGUID_iface;
    FUNC4("returning %p\n", *ppOut);
    return S_OK;
}