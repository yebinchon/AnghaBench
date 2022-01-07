
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WNetEnumerator ;
struct TYPE_5__ {int net; } ;
struct TYPE_6__ {TYPE_1__ specific; void* dwUsage; void* dwType; void* dwScope; int enumType; } ;
typedef TYPE_2__* PWNetEnumerator ;
typedef int LPNETRESOURCEW ;
typedef void* DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int WNET_ENUMERATOR_TYPE_GLOBAL ;
 int _copyNetResourceForEnumW (int ) ;

__attribute__((used)) static PWNetEnumerator _createGlobalEnumeratorW(DWORD dwScope, DWORD dwType,
 DWORD dwUsage, LPNETRESOURCEW lpNet)
{
    PWNetEnumerator ret = HeapAlloc(GetProcessHeap(),
     HEAP_ZERO_MEMORY, sizeof(WNetEnumerator));

    if (ret)
    {
        ret->enumType = WNET_ENUMERATOR_TYPE_GLOBAL;
        ret->dwScope = dwScope;
        ret->dwType = dwType;
        ret->dwUsage = dwUsage;
        ret->specific.net = _copyNetResourceForEnumW(lpNet);
    }
    return ret;
}
