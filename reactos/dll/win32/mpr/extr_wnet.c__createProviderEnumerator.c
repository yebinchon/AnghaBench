
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WNetEnumerator ;
struct TYPE_6__ {scalar_t__ numProviders; } ;
struct TYPE_5__ {int handle; scalar_t__ dwUsage; scalar_t__ dwType; scalar_t__ dwScope; scalar_t__ providerIndex; int enumType; } ;
typedef TYPE_1__* PWNetEnumerator ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int WNET_ENUMERATOR_TYPE_PROVIDER ;
 TYPE_2__* providerTable ;

__attribute__((used)) static PWNetEnumerator _createProviderEnumerator(DWORD dwScope, DWORD dwType,
 DWORD dwUsage, DWORD index, HANDLE handle)
{
    PWNetEnumerator ret;

    if (!providerTable || index >= providerTable->numProviders)
        ret = ((void*)0);
    else
    {
        ret = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(WNetEnumerator));
        if (ret)
        {
            ret->enumType = WNET_ENUMERATOR_TYPE_PROVIDER;
            ret->providerIndex = index;
            ret->dwScope = dwScope;
            ret->dwType = dwType;
            ret->dwUsage = dwUsage;
            ret->handle = handle;
        }
    }
    return ret;
}
