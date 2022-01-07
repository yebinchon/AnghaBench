
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct filecollection {int IFileCollection_iface; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_5__ {struct filecollection* coll; int * find; } ;
struct TYPE_6__ {TYPE_1__ filecoll; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct enumvariant {int ref; TYPE_4__ IEnumVARIANT_iface; TYPE_3__ data; } ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IFileCollection_AddRef (int *) ;
 int S_OK ;
 int filecollenumvariantvtbl ;
 struct enumvariant* heap_alloc (int) ;

__attribute__((used)) static HRESULT create_filecoll_enum(struct filecollection *collection, IUnknown **newenum)
{
    struct enumvariant *This;

    *newenum = ((void*)0);

    This = heap_alloc(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IEnumVARIANT_iface.lpVtbl = &filecollenumvariantvtbl;
    This->ref = 1;
    This->data.u.filecoll.find = ((void*)0);
    This->data.u.filecoll.coll = collection;
    IFileCollection_AddRef(&collection->IFileCollection_iface);

    *newenum = (IUnknown*)&This->IEnumVARIANT_iface;

    return S_OK;
}
