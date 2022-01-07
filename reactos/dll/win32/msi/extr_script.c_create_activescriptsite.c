
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; int * session; int * installer; TYPE_1__ IActiveScriptSite_iface; } ;
typedef TYPE_2__ MsiActiveScriptSite ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,TYPE_2__**) ;
 int activescriptsitevtbl ;
 TYPE_2__* msi_alloc (int) ;

__attribute__((used)) static HRESULT create_activescriptsite(MsiActiveScriptSite **obj)
{
    MsiActiveScriptSite* object;

    TRACE("(%p)\n", obj);

    *obj = ((void*)0);

    object = msi_alloc( sizeof(MsiActiveScriptSite) );
    if (!object)
        return E_OUTOFMEMORY;

    object->IActiveScriptSite_iface.lpVtbl = &activescriptsitevtbl;
    object->ref = 1;
    object->installer = ((void*)0);
    object->session = ((void*)0);

    *obj = object;

    return S_OK;
}
