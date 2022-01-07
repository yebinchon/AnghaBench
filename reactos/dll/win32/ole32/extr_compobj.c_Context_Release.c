
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ Context ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int InterlockedDecrement (int *) ;

__attribute__((used)) static ULONG Context_Release(Context *This)
{


    if (!This->refs)
    {
        HeapFree(GetProcessHeap(), 0, This);
        return 0;
    }

    return InterlockedDecrement(&This->refs);
}
