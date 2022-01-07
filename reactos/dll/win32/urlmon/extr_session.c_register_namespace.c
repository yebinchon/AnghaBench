
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; int protocol; scalar_t__ urlmon; int clsid; int * cf; } ;
typedef TYPE_1__ name_space ;
typedef int * REFIID ;
typedef int LPCWSTR ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int EnterCriticalSection (int *) ;
 int IClassFactory_AddRef (int *) ;
 int LeaveCriticalSection (int *) ;
 int S_OK ;
 TYPE_1__* heap_alloc (int) ;
 int heap_strdupW (int ) ;
 int list_add_head (int *,int *) ;
 int name_space_list ;
 int session_cs ;

HRESULT register_namespace(IClassFactory *cf, REFIID clsid, LPCWSTR protocol, BOOL urlmon_protocol)
{
    name_space *new_name_space;

    new_name_space = heap_alloc(sizeof(name_space));

    if(!urlmon_protocol)
        IClassFactory_AddRef(cf);
    new_name_space->cf = cf;
    new_name_space->clsid = *clsid;
    new_name_space->urlmon = urlmon_protocol;
    new_name_space->protocol = heap_strdupW(protocol);

    EnterCriticalSection(&session_cs);

    list_add_head(&name_space_list, &new_name_space->entry);

    LeaveCriticalSection(&session_cs);

    return S_OK;
}
