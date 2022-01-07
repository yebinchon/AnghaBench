
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_8__ {size_t tableSize; int cs; int enumerated; TYPE_2__* table; } ;
struct TYPE_5__ {int (* enumerate ) () ;} ;
struct TYPE_7__ {TYPE_1__ transport; } ;
struct TYPE_6__ {scalar_t__ transport; scalar_t__ enabled; } ;


 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,...) ;
 int TRUE ;
 TYPE_4__ gNBTable ;
 size_t gNumTransports ;
 TYPE_3__* gTransports ;
 int nbShutdownAdapter (TYPE_2__*) ;
 int stub1 () ;

__attribute__((used)) static void nbInternalEnum(void)
{
    UCHAR i;

    EnterCriticalSection(&gNBTable.cs);
    TRACE("before mark\n");

    for (i = 0; i < gNBTable.tableSize; i++)
        if (gNBTable.table[i].enabled && gNBTable.table[i].transport != 0)
            gNBTable.table[i].enabled = FALSE;

    TRACE("marked, before store, %d transports\n", gNumTransports);

    for (i = 0; i < gNumTransports; i++)
        if (gTransports[i].transport.enumerate)
            gTransports[i].transport.enumerate();

    TRACE("before sweep\n");

    for (i = 0; i < gNBTable.tableSize; i++)
        if (!gNBTable.table[i].enabled && gNBTable.table[i].transport != 0)
            nbShutdownAdapter(&gNBTable.table[i]);
    gNBTable.enumerated = TRUE;
    LeaveCriticalSection(&gNBTable.cs);
}
