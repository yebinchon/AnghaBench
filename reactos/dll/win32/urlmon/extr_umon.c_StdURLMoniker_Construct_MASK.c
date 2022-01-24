#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  IMoniker_iface; } ;
typedef  TYPE_1__ URLMoniker ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 

HRESULT FUNC3(IUnknown *outer, void **ppv)
{
    URLMoniker *mon;
    HRESULT hres;

    FUNC1("(%p %p)\n", outer, ppv);

    hres = FUNC2(NULL, &mon);
    if(FUNC0(hres))
        return hres;

    *ppv = &mon->IMoniker_iface;
    return S_OK;
}