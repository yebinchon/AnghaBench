
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_4__ {size_t tableSize; int cs; TYPE_1__* table; } ;
struct TYPE_3__ {scalar_t__ transport; int enabled; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,size_t) ;
 int TRUE ;
 TYPE_2__ gNBTable ;

void NetBIOSEnableAdapter(UCHAR lana)
{
    TRACE(": %d\n", lana);
    if (lana < gNBTable.tableSize)
    {
        EnterCriticalSection(&gNBTable.cs);
        if (gNBTable.table[lana].transport != 0)
            gNBTable.table[lana].enabled = TRUE;
        LeaveCriticalSection(&gNBTable.cs);
    }
}
