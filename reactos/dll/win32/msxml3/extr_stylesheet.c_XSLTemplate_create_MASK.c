#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IXSLTemplate_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * node; } ;
typedef  TYPE_2__ xsltemplate ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  XSLTemplateVtbl ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xsltemplate_dispex ; 

HRESULT FUNC3(void **ppObj)
{
    xsltemplate *This;

    FUNC0("(%p)\n", ppObj);

    This = FUNC1( sizeof (*This) );
    if(!This)
        return E_OUTOFMEMORY;

    This->IXSLTemplate_iface.lpVtbl = &XSLTemplateVtbl;
    This->ref = 1;
    This->node = NULL;
    FUNC2(&This->dispex, (IUnknown*)&This->IXSLTemplate_iface, &xsltemplate_dispex);

    *ppObj = &This->IXSLTemplate_iface;

    FUNC0("returning iface %p\n", *ppObj);

    return S_OK;
}