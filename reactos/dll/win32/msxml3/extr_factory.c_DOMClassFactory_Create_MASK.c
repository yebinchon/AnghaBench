#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {TYPE_4__ IClassFactory_iface; int /*<<< orphan*/  pCreateInstance; int /*<<< orphan*/  version; scalar_t__ ref; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DOMFactoryCreateInstanceFunc ;
typedef  TYPE_1__ DOMFactory ;

/* Variables and functions */
 int /*<<< orphan*/  DOMClassFactoryVtbl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC5(const GUID *clsid, REFIID riid, void **ppv, DOMFactoryCreateInstanceFunc fnCreateInstance)
{
    DOMFactory *ret = FUNC3(sizeof(DOMFactory));
    HRESULT hres;

    ret->IClassFactory_iface.lpVtbl = &DOMClassFactoryVtbl;
    ret->ref = 0;
    ret->version = FUNC2(clsid);
    ret->pCreateInstance = fnCreateInstance;

    hres = FUNC1(&ret->IClassFactory_iface, riid, ppv);
    if(FUNC0(hres)) {
        FUNC4(ret);
        *ppv = NULL;
    }
    return hres;
}