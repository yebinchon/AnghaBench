
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_5__ IAccessible_iface; scalar_t__ enum_pos; int hwnd; TYPE_2__ IEnumVARIANT_iface; TYPE_1__ IOleWindow_iface; } ;
typedef int IID ;
typedef int HWND ;
typedef int HRESULT ;
typedef TYPE_3__ Client ;


 int ClientEnumVARIANTVtbl ;
 int ClientOleWindowVtbl ;
 int ClientVtbl ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int IAccessible_QueryInterface (TYPE_5__*,int const*,void**) ;
 int IAccessible_Release (TYPE_5__*) ;
 int IsWindow (int ) ;
 TYPE_3__* heap_alloc_zero (int) ;

HRESULT create_client_object(HWND hwnd, const IID *iid, void **obj)
{
    Client *client;
    HRESULT hres;

    if(!IsWindow(hwnd))
        return E_FAIL;

    client = heap_alloc_zero(sizeof(Client));
    if(!client)
        return E_OUTOFMEMORY;

    client->IAccessible_iface.lpVtbl = &ClientVtbl;
    client->IOleWindow_iface.lpVtbl = &ClientOleWindowVtbl;
    client->IEnumVARIANT_iface.lpVtbl = &ClientEnumVARIANTVtbl;
    client->ref = 1;
    client->hwnd = hwnd;
    client->enum_pos = 0;

    hres = IAccessible_QueryInterface(&client->IAccessible_iface, iid, obj);
    IAccessible_Release(&client->IAccessible_iface);
    return hres;
}
