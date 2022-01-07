
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_2__ {int tableSize; scalar_t__ table; } ;
typedef int NetBIOSAdapter ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 scalar_t__ HeapReAlloc (int ,int ,scalar_t__,int) ;
 int NRC_GOODRET ;
 int NRC_OSRESNOTAV ;
 TYPE_1__ gNBTable ;

__attribute__((used)) static UCHAR nbResizeAdapterTable(UCHAR newSize)
{
    UCHAR ret;

    if (gNBTable.table)
        gNBTable.table = HeapReAlloc(GetProcessHeap(),
         HEAP_ZERO_MEMORY, gNBTable.table,
         newSize * sizeof(NetBIOSAdapter));
    else
        gNBTable.table = HeapAlloc(GetProcessHeap(),
         HEAP_ZERO_MEMORY, newSize * sizeof(NetBIOSAdapter));
    if (gNBTable.table)
    {
        gNBTable.tableSize = newSize;
        ret = NRC_GOODRET;
    }
    else
        ret = NRC_OSRESNOTAV;
    return ret;
}
