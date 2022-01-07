
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WNetEnumerator ;
struct TYPE_8__ {int numProviders; } ;
struct TYPE_6__ {void* handles; } ;
struct TYPE_7__ {TYPE_1__ specific; void* dwUsage; void* dwType; void* dwScope; int enumType; } ;
typedef TYPE_2__* PWNetEnumerator ;
typedef int HANDLE ;
typedef void* DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int WNET_ENUMERATOR_TYPE_CONNECTED ;
 TYPE_3__* providerTable ;

__attribute__((used)) static PWNetEnumerator _createConnectedEnumerator(DWORD dwScope, DWORD dwType,
 DWORD dwUsage)
{
    PWNetEnumerator ret = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(WNetEnumerator));
    if (ret)
    {
        ret->enumType = WNET_ENUMERATOR_TYPE_CONNECTED;
        ret->dwScope = dwScope;
        ret->dwType = dwType;
        ret->dwUsage = dwUsage;
        ret->specific.handles = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(HANDLE) * providerTable->numProviders);
        if (!ret->specific.handles)
        {
            HeapFree(GetProcessHeap(), 0, ret);
            ret = ((void*)0);
        }
    }
    return ret;
}
