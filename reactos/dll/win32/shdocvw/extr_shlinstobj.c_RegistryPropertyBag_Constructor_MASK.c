#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {TYPE_3__ IPropertyBag_iface; int /*<<< orphan*/  m_hInitPropertyBagKey; scalar_t__ m_cRef; } ;
typedef  TYPE_1__ RegistryPropertyBag ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  RegistryPropertyBag_IPropertyBagVtbl ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static HRESULT FUNC6(HKEY hInitPropertyBagKey, REFIID riid, LPVOID *ppvObject) {
    HRESULT hr = E_FAIL;
    RegistryPropertyBag *pRegistryPropertyBag;

    FUNC3("(hInitPropertyBagKey=%p, riid=%s, ppvObject=%p)\n", hInitPropertyBagKey, 
        FUNC4(riid), ppvObject);
    
    pRegistryPropertyBag = FUNC5(sizeof(RegistryPropertyBag));
    if (pRegistryPropertyBag) {
        pRegistryPropertyBag->IPropertyBag_iface.lpVtbl = &RegistryPropertyBag_IPropertyBagVtbl;
        pRegistryPropertyBag->m_cRef = 0;
        pRegistryPropertyBag->m_hInitPropertyBagKey = hInitPropertyBagKey;

        /* The clasping AddRef/Release is for the case that QueryInterface fails, which will result
         * in a reference count of 0 in the Release call, which will result in object destruction.*/
        FUNC0(&pRegistryPropertyBag->IPropertyBag_iface);
        hr = FUNC1(&pRegistryPropertyBag->IPropertyBag_iface, riid, ppvObject);
        FUNC2(&pRegistryPropertyBag->IPropertyBag_iface);
    }

    return hr;
}