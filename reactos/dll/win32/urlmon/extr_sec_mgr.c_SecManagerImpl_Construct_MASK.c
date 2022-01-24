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
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; int /*<<< orphan*/ * custom_manager; int /*<<< orphan*/ * mgrsite; TYPE_1__ IInternetSecurityManagerEx2_iface; } ;
typedef  TYPE_2__ SecManagerImpl ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  VT_SecManagerImpl ; 
 TYPE_2__* FUNC2 (int) ; 

HRESULT FUNC3(IUnknown *pUnkOuter, LPVOID *ppobj)
{
    SecManagerImpl *This;

    FUNC0("(%p,%p)\n",pUnkOuter,ppobj);
    This = FUNC2(sizeof(*This));

    /* Initialize the virtual function table. */
    This->IInternetSecurityManagerEx2_iface.lpVtbl = &VT_SecManagerImpl;

    This->ref = 1;
    This->mgrsite = NULL;
    This->custom_manager = NULL;

    *ppobj = This;

    FUNC1();

    return S_OK;
}