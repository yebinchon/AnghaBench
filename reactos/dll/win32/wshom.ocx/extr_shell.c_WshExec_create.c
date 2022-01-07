
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_3__ IWshExec_iface; int classinfo; int info; } ;
typedef TYPE_1__ WshExecImpl ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_2__ STARTUPINFOW ;
typedef TYPE_3__ IWshExec ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef int BSTR ;


 int CLSID_WshExec ;
 int CreateProcessW (int *,int ,int *,int *,int ,int ,int *,int *,TYPE_2__*,int *) ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int GetLastError () ;
 int HRESULT_FROM_WIN32 (int ) ;
 int S_OK ;
 int WshExecVtbl ;
 TYPE_1__* heap_alloc (int) ;
 int heap_free (TYPE_1__*) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT WshExec_create(BSTR command, IWshExec **ret)
{
    STARTUPINFOW si = {0};
    WshExecImpl *This;

    *ret = ((void*)0);

    This = heap_alloc(sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->IWshExec_iface.lpVtbl = &WshExecVtbl;
    This->ref = 1;

    if (!CreateProcessW(((void*)0), command, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &This->info)) {
        heap_free(This);
        return HRESULT_FROM_WIN32(GetLastError());
    }

    init_classinfo(&CLSID_WshExec, (IUnknown *)&This->IWshExec_iface, &This->classinfo);
    *ret = &This->IWshExec_iface;
    return S_OK;
}
