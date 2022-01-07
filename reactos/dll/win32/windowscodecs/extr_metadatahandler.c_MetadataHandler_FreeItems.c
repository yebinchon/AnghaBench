
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int value; int id; int schema; } ;
struct TYPE_4__ {size_t item_count; TYPE_3__* items; } ;
typedef TYPE_1__ MetadataHandler ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int PropVariantClear (int *) ;

__attribute__((used)) static void MetadataHandler_FreeItems(MetadataHandler *This)
{
    DWORD i;

    for (i=0; i<This->item_count; i++)
    {
        PropVariantClear(&This->items[i].schema);
        PropVariantClear(&This->items[i].id);
        PropVariantClear(&This->items[i].value);
    }

    HeapFree(GetProcessHeap(), 0, This->items);
}
