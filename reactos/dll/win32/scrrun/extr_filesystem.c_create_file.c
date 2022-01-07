
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct file {int ref; TYPE_1__ IFile_iface; int classinfo; struct file* path; } ;
typedef int WCHAR ;
typedef int IUnknown ;
typedef TYPE_1__ IFile ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSTR ;


 int CLSID_File ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FILE_ATTRIBUTE_DEVICE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (struct file*) ;
 int GetFullPathNameW (int ,int,struct file*,int *) ;
 int GetLastError () ;
 int INVALID_FILE_ATTRIBUTES ;
 int S_OK ;
 int create_error (int ) ;
 int file_vtbl ;
 void* heap_alloc (int) ;
 int heap_free (struct file*) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT create_file(BSTR path, IFile **file)
{
    struct file *f;
    DWORD len, attrs;

    *file = ((void*)0);

    f = heap_alloc(sizeof(struct file));
    if(!f)
        return E_OUTOFMEMORY;

    f->IFile_iface.lpVtbl = &file_vtbl;
    f->ref = 1;

    len = GetFullPathNameW(path, 0, ((void*)0), ((void*)0));
    if(!len) {
        heap_free(f);
        return E_FAIL;
    }

    f->path = heap_alloc(len*sizeof(WCHAR));
    if(!f->path) {
        heap_free(f);
        return E_OUTOFMEMORY;
    }

    if(!GetFullPathNameW(path, len, f->path, ((void*)0))) {
        heap_free(f->path);
        heap_free(f);
        return E_FAIL;
    }

    attrs = GetFileAttributesW(f->path);
    if(attrs==INVALID_FILE_ATTRIBUTES ||
            (attrs&(FILE_ATTRIBUTE_DIRECTORY|FILE_ATTRIBUTE_DEVICE))) {
        heap_free(f->path);
        heap_free(f);
        return create_error(GetLastError());
    }

    init_classinfo(&CLSID_File, (IUnknown *)&f->IFile_iface, &f->classinfo);
    *file = &f->IFile_iface;
    return S_OK;
}
