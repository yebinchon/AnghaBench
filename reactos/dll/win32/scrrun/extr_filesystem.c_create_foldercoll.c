
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct foldercollection {int ref; TYPE_1__ IFolderCollection_iface; int classinfo; int path; } ;
typedef int IUnknown ;
typedef TYPE_1__ IFolderCollection ;
typedef int HRESULT ;
typedef int BSTR ;


 int CLSID_Folders ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int SysAllocString (int ) ;
 int foldercollvtbl ;
 struct foldercollection* heap_alloc (int) ;
 int heap_free (struct foldercollection*) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT create_foldercoll(BSTR path, IFolderCollection **folders)
{
    struct foldercollection *This;

    *folders = ((void*)0);

    This = heap_alloc(sizeof(struct foldercollection));
    if (!This) return E_OUTOFMEMORY;

    This->IFolderCollection_iface.lpVtbl = &foldercollvtbl;
    This->ref = 1;
    This->path = SysAllocString(path);
    if (!This->path)
    {
        heap_free(This);
        return E_OUTOFMEMORY;
    }

    init_classinfo(&CLSID_Folders, (IUnknown *)&This->IFolderCollection_iface, &This->classinfo);
    *folders = &This->IFolderCollection_iface;

    return S_OK;
}
