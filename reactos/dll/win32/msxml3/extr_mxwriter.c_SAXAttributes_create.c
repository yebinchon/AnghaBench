
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; int allocated; TYPE_3__ IMXAttributes_iface; int dispex; scalar_t__ length; void* attr; int class_version; TYPE_2__ IVBSAXAttributes_iface; TYPE_1__ ISAXAttributes_iface; } ;
typedef TYPE_4__ mxattributes ;
typedef int mxattribute ;
typedef int MSXML_VERSION ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int MXAttributesVtbl ;
 int SAXAttributesVtbl ;
 int S_OK ;
 int TRACE (char*,void*) ;
 int VBSAXAttributesVtbl ;
 void* heap_alloc (int const) ;
 int init_dispex (int *,int *,int *) ;
 int mxattrs_dispex ;

HRESULT SAXAttributes_create(MSXML_VERSION version, void **ppObj)
{
    static const int default_count = 10;
    mxattributes *This;

    TRACE("(%p)\n", ppObj);

    This = heap_alloc( sizeof (*This) );
    if( !This )
        return E_OUTOFMEMORY;

    This->IMXAttributes_iface.lpVtbl = &MXAttributesVtbl;
    This->ISAXAttributes_iface.lpVtbl = &SAXAttributesVtbl;
    This->IVBSAXAttributes_iface.lpVtbl = &VBSAXAttributesVtbl;
    This->ref = 1;

    This->class_version = version;

    This->attr = heap_alloc(default_count*sizeof(mxattribute));
    This->length = 0;
    This->allocated = default_count;

    *ppObj = &This->IMXAttributes_iface;

    init_dispex(&This->dispex, (IUnknown*)&This->IMXAttributes_iface, &mxattrs_dispex);

    TRACE("returning iface %p\n", *ppObj);

    return S_OK;
}
