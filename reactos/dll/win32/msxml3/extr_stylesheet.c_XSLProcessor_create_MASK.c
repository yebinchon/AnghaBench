#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  IXSLTemplate_iface; } ;
typedef  TYPE_3__ xsltemplate ;
struct TYPE_13__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {scalar_t__ count; int /*<<< orphan*/  list; } ;
struct TYPE_9__ {int /*<<< orphan*/ * unk; } ;
struct TYPE_12__ {int ref; TYPE_5__ IXSLProcessor_iface; int /*<<< orphan*/  dispex; TYPE_3__* stylesheet; TYPE_2__ params; int /*<<< orphan*/ * outstr; int /*<<< orphan*/  output_type; TYPE_1__ output; int /*<<< orphan*/ * input; } ;
typedef  TYPE_4__ xslprocessor ;
typedef  TYPE_5__ IXSLProcessor ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROCESSOR_OUTPUT_NOT_SET ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  XSLProcessorVtbl ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xslprocessor_dispex ; 

HRESULT FUNC5(xsltemplate *template, IXSLProcessor **ppObj)
{
    xslprocessor *This;

    FUNC1("(%p)\n", ppObj);

    This = FUNC2( sizeof (*This) );
    if(!This)
        return E_OUTOFMEMORY;

    This->IXSLProcessor_iface.lpVtbl = &XSLProcessorVtbl;
    This->ref = 1;
    This->input = NULL;
    This->output.unk = NULL;
    This->output_type = PROCESSOR_OUTPUT_NOT_SET;
    This->outstr = NULL;
    FUNC4(&This->params.list);
    This->params.count = 0;
    This->stylesheet = template;
    FUNC0(&template->IXSLTemplate_iface);
    FUNC3(&This->dispex, (IUnknown*)&This->IXSLProcessor_iface, &xslprocessor_dispex);

    *ppObj = &This->IXSLProcessor_iface;

    FUNC1("returning iface %p\n", *ppObj);

    return S_OK;
}