
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t numProviders; struct TYPE_5__* entireNetwork; TYPE_1__* table; } ;
struct TYPE_4__ {int hLib; TYPE_2__* name; } ;
typedef size_t DWORD ;


 int FreeModule (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 TYPE_2__* providerTable ;

void wnetFree(void)
{
    if (providerTable)
    {
        DWORD i;

        for (i = 0; i < providerTable->numProviders; i++)
        {
            HeapFree(GetProcessHeap(), 0, providerTable->table[i].name);
            FreeModule(providerTable->table[i].hLib);
        }
        HeapFree(GetProcessHeap(), 0, providerTable->entireNetwork);
        HeapFree(GetProcessHeap(), 0, providerTable);
        providerTable = ((void*)0);
    }
}
