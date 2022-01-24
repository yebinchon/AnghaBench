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
struct TYPE_5__ {TYPE_4__ IClassFactory_iface; int /*<<< orphan*/  fnCreateInstance; scalar_t__ ref; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CreateInstanceFunc ;
typedef  TYPE_1__ ClassFactory ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTMLClassFactoryVtbl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,void**) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC4(REFIID riid, void **ppv, CreateInstanceFunc fnCreateInstance)
{
    ClassFactory *ret = FUNC2(sizeof(ClassFactory));
    HRESULT hres;

    ret->IClassFactory_iface.lpVtbl = &HTMLClassFactoryVtbl;
    ret->ref = 0;
    ret->fnCreateInstance = fnCreateInstance;

    hres = FUNC1(&ret->IClassFactory_iface, riid, ppv);
    if(FUNC0(hres)) {
        FUNC3(ret);
        *ppv = NULL;
    }
    return hres;
}