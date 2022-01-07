
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct folder {int ref; TYPE_1__ IFolder_iface; int classinfo; int path; } ;
typedef int WCHAR ;
typedef int IUnknown ;
typedef TYPE_1__ IFolder ;
typedef int HRESULT ;


 int CLSID_Folder ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int SysAllocString (int const*) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int const*) ;
 int foldervtbl ;
 struct folder* heap_alloc (int) ;
 int heap_free (struct folder*) ;
 int init_classinfo (int *,int *,int *) ;

HRESULT create_folder(const WCHAR *path, IFolder **folder)
{
    struct folder *This;

    *folder = ((void*)0);

    TRACE("%s\n", debugstr_w(path));

    This = heap_alloc(sizeof(struct folder));
    if (!This) return E_OUTOFMEMORY;

    This->IFolder_iface.lpVtbl = &foldervtbl;
    This->ref = 1;
    This->path = SysAllocString(path);
    if (!This->path)
    {
        heap_free(This);
        return E_OUTOFMEMORY;
    }

    init_classinfo(&CLSID_Folder, (IUnknown *)&This->IFolder_iface, &This->classinfo);
    *folder = &This->IFolder_iface;

    return S_OK;
}
