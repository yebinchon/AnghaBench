
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct filecollection {int ref; TYPE_1__ IFileCollection_iface; int classinfo; int path; } ;
typedef int IUnknown ;
typedef TYPE_1__ IFileCollection ;
typedef int HRESULT ;
typedef int BSTR ;


 int CLSID_Files ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int SysAllocString (int ) ;
 int filecollectionvtbl ;
 struct filecollection* heap_alloc (int) ;
 int heap_free (struct filecollection*) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT create_filecoll(BSTR path, IFileCollection **files)
{
    struct filecollection *This;

    *files = ((void*)0);

    This = heap_alloc(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IFileCollection_iface.lpVtbl = &filecollectionvtbl;
    This->ref = 1;
    This->path = SysAllocString(path);
    if (!This->path)
    {
        heap_free(This);
        return E_OUTOFMEMORY;
    }

    init_classinfo(&CLSID_Files, (IUnknown *)&This->IFileCollection_iface, &This->classinfo);
    *files = &This->IFileCollection_iface;
    return S_OK;
}
