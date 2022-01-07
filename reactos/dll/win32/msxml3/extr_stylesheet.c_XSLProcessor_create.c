
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int IXSLTemplate_iface; } ;
typedef TYPE_3__ xsltemplate ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_10__ {scalar_t__ count; int list; } ;
struct TYPE_9__ {int * unk; } ;
struct TYPE_12__ {int ref; TYPE_5__ IXSLProcessor_iface; int dispex; TYPE_3__* stylesheet; TYPE_2__ params; int * outstr; int output_type; TYPE_1__ output; int * input; } ;
typedef TYPE_4__ xslprocessor ;
typedef TYPE_5__ IXSLProcessor ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IXSLTemplate_AddRef (int *) ;
 int PROCESSOR_OUTPUT_NOT_SET ;
 int S_OK ;
 int TRACE (char*,...) ;
 int XSLProcessorVtbl ;
 TYPE_4__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int list_init (int *) ;
 int xslprocessor_dispex ;

HRESULT XSLProcessor_create(xsltemplate *template, IXSLProcessor **ppObj)
{
    xslprocessor *This;

    TRACE("(%p)\n", ppObj);

    This = heap_alloc( sizeof (*This) );
    if(!This)
        return E_OUTOFMEMORY;

    This->IXSLProcessor_iface.lpVtbl = &XSLProcessorVtbl;
    This->ref = 1;
    This->input = ((void*)0);
    This->output.unk = ((void*)0);
    This->output_type = PROCESSOR_OUTPUT_NOT_SET;
    This->outstr = ((void*)0);
    list_init(&This->params.list);
    This->params.count = 0;
    This->stylesheet = template;
    IXSLTemplate_AddRef(&template->IXSLTemplate_iface);
    init_dispex(&This->dispex, (IUnknown*)&This->IXSLProcessor_iface, &xslprocessor_dispex);

    *ppObj = &This->IXSLProcessor_iface;

    TRACE("returning iface %p\n", *ppObj);

    return S_OK;
}
