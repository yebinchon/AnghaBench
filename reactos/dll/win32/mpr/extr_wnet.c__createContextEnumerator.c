
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WNetEnumerator ;
struct TYPE_4__ {void* dwUsage; void* dwType; void* dwScope; int enumType; } ;
typedef TYPE_1__* PWNetEnumerator ;
typedef void* DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int WNET_ENUMERATOR_TYPE_CONTEXT ;

__attribute__((used)) static PWNetEnumerator _createContextEnumerator(DWORD dwScope, DWORD dwType,
 DWORD dwUsage)
{
    PWNetEnumerator ret = HeapAlloc(GetProcessHeap(),
     HEAP_ZERO_MEMORY, sizeof(WNetEnumerator));

    if (ret)
    {
        ret->enumType = WNET_ENUMERATOR_TYPE_CONTEXT;
        ret->dwScope = dwScope;
        ret->dwType = dwType;
        ret->dwUsage = dwUsage;
    }
    return ret;
}
