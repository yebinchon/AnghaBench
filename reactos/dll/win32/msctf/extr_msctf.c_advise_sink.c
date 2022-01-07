
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_6__ {int pIUnknown; } ;
struct TYPE_7__ {int entry; TYPE_1__ interfaces; } ;
typedef TYPE_2__ Sink ;
typedef int REFIID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef int DWORD ;


 int CONNECT_E_CANNOTCONNECT ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IUnknown_QueryInterface (int *,int ,void**) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int generate_Cookie (int ,TYPE_2__*) ;
 int list_add_head (struct list*,int *) ;

HRESULT advise_sink(struct list *sink_list, REFIID riid, DWORD cookie_magic, IUnknown *unk, DWORD *cookie)
{
    Sink *sink;

    sink = HeapAlloc(GetProcessHeap(), 0, sizeof(*sink));
    if (!sink)
        return E_OUTOFMEMORY;

    if (FAILED(IUnknown_QueryInterface(unk, riid, (void**)&sink->interfaces.pIUnknown)))
    {
        HeapFree(GetProcessHeap(), 0, sink);
        return CONNECT_E_CANNOTCONNECT;
    }

    list_add_head(sink_list, &sink->entry);
    *cookie = generate_Cookie(cookie_magic, sink);
    TRACE("cookie %x\n", *cookie);
    return S_OK;
}
