
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nameCache; } ;
typedef TYPE_1__ NetBTAdapter ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;
 int NBNameCacheDestroy (scalar_t__) ;
 int TRACE (char*,void*) ;

__attribute__((used)) static void NetBTCleanupAdapter(void *adapt)
{
    TRACE("adapt %p\n", adapt);
    if (adapt)
    {
        NetBTAdapter *adapter = adapt;

        if (adapter->nameCache)
            NBNameCacheDestroy(adapter->nameCache);
        HeapFree(GetProcessHeap(), 0, adapt);
    }
}
