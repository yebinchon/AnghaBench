
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IWshShortcut_iface; int classinfo; int link; int path_link; } ;
typedef TYPE_2__ WshShortcut ;
typedef int WCHAR ;
typedef int IUnknown ;
typedef int IDispatch ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ShellLink ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IID_IShellLinkW ;
 int IID_IWshShortcut ;
 int IShellLinkW_Release (int ) ;
 int S_OK ;
 int SysAllocString (int const*) ;
 int WshShortcutVtbl ;
 TYPE_2__* heap_alloc (int) ;
 int heap_free (TYPE_2__*) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT WshShortcut_Create(const WCHAR *path, IDispatch **shortcut)
{
    WshShortcut *This;
    HRESULT hr;

    *shortcut = ((void*)0);

    This = heap_alloc(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IWshShortcut_iface.lpVtbl = &WshShortcutVtbl;
    This->ref = 1;

    hr = CoCreateInstance(&CLSID_ShellLink, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IShellLinkW, (void**)&This->link);
    if (FAILED(hr))
    {
        heap_free(This);
        return hr;
    }

    This->path_link = SysAllocString(path);
    if (!This->path_link)
    {
        IShellLinkW_Release(This->link);
        heap_free(This);
        return E_OUTOFMEMORY;
    }

    init_classinfo(&IID_IWshShortcut, (IUnknown *)&This->IWshShortcut_iface, &This->classinfo);
    *shortcut = (IDispatch*)&This->IWshShortcut_iface;

    return S_OK;
}
