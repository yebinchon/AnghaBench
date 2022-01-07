
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WNetEnumerator ;
struct TYPE_6__ {int registry; } ;
struct TYPE_7__ {TYPE_1__ remembered; } ;
struct TYPE_8__ {TYPE_2__ specific; void* dwType; void* dwScope; int enumType; } ;
typedef TYPE_3__* PWNetEnumerator ;
typedef int HKEY ;
typedef void* DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int WNET_ENUMERATOR_TYPE_REMEMBERED ;

__attribute__((used)) static PWNetEnumerator _createRememberedEnumerator(DWORD dwScope, DWORD dwType,
 HKEY remembered)
{
    PWNetEnumerator ret = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(WNetEnumerator));
    if (ret)
    {
        ret->enumType = WNET_ENUMERATOR_TYPE_REMEMBERED;
        ret->dwScope = dwScope;
        ret->dwType = dwType;
        ret->specific.remembered.registry = remembered;
    }
    return ret;
}
