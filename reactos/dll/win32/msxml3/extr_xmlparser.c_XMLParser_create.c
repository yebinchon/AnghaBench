
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IXMLParser_iface; int state; scalar_t__ flags; int * input; int * nodefactory; } ;
typedef TYPE_2__ xmlparser ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,void*) ;
 int XMLPARSER_IDLE ;
 TYPE_2__* heap_alloc (int) ;
 int xmlparser_vtbl ;

HRESULT XMLParser_create(void **ppObj)
{
    xmlparser *This;

    TRACE("(%p)\n", ppObj);

    This = heap_alloc( sizeof(xmlparser) );
    if(!This)
        return E_OUTOFMEMORY;

    This->IXMLParser_iface.lpVtbl = &xmlparser_vtbl;
    This->nodefactory = ((void*)0);
    This->input = ((void*)0);
    This->flags = 0;
    This->state = XMLPARSER_IDLE;
    This->ref = 1;

    *ppObj = &This->IXMLParser_iface;

    TRACE("returning iface %p\n", *ppObj);

    return S_OK;
}
