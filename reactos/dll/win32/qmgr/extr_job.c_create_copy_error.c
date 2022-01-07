
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct copy_error {int refs; TYPE_1__ IBackgroundCopyError_iface; int * file; int code; int context; } ;
typedef int IBackgroundCopyFile2 ;
typedef TYPE_1__ IBackgroundCopyError ;
typedef int HRESULT ;
typedef int BG_ERROR_CONTEXT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 struct copy_error* HeapAlloc (int ,int ,int) ;
 int IBackgroundCopyFile2_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,...) ;
 int copy_error_vtbl ;

__attribute__((used)) static HRESULT create_copy_error(
    BG_ERROR_CONTEXT context,
    HRESULT code,
    IBackgroundCopyFile2 *file,
    IBackgroundCopyError **obj)
{
    struct copy_error *error;

    TRACE("context %u code %08x file %p\n", context, code, file);

    if (!(error = HeapAlloc(GetProcessHeap(), 0, sizeof(*error) ))) return E_OUTOFMEMORY;
    error->IBackgroundCopyError_iface.lpVtbl = &copy_error_vtbl;
    error->refs = 1;
    error->context = context;
    error->code = code;
    error->file = file;
    if (error->file) IBackgroundCopyFile2_AddRef(error->file);

    *obj = &error->IBackgroundCopyError_iface;
    TRACE("returning iface %p\n", *obj);
    return S_OK;
}
