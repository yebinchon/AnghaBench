
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef size_t UCHAR ;
struct TYPE_4__ {size_t tableSize; int cs; TYPE_1__* table; scalar_t__ enumerating; } ;
struct TYPE_3__ {scalar_t__ transport_id; int impl; } ;
typedef int (* NetBIOSEnumAdaptersCallback ) (size_t,int ,scalar_t__,int *,void*) ;
typedef int BOOL ;


 int ALL_TRANSPORTS ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,scalar_t__,int (*) (size_t,int ,scalar_t__,int *,void*),void*) ;
 scalar_t__ TRUE ;
 TYPE_2__ gNBTable ;
 scalar_t__ memcmp (scalar_t__*,int ,int) ;
 int nbInternalEnum () ;

void NetBIOSEnumAdapters(ULONG transport, NetBIOSEnumAdaptersCallback cb,
 void *closure)
{
    TRACE("transport 0x%08x, callback %p, closure %p\n", transport, cb,
     closure);
    if (cb)
    {
        BOOL enumAll = memcmp(&transport, ALL_TRANSPORTS, sizeof(ULONG)) == 0;
        UCHAR i, numLANAs = 0;

        EnterCriticalSection(&gNBTable.cs);
        if (!gNBTable.enumerating)
        {
            gNBTable.enumerating = TRUE;
            nbInternalEnum();
            gNBTable.enumerating = FALSE;
        }
        for (i = 0; i < gNBTable.tableSize; i++)
            if (enumAll || gNBTable.table[i].transport_id == transport)
                numLANAs++;
        if (numLANAs > 0)
        {
            UCHAR lanaIndex = 0;

            for (i = 0; i < gNBTable.tableSize; i++)
                if (gNBTable.table[i].transport_id != 0 &&
                 (enumAll || gNBTable.table[i].transport_id == transport))
                    cb(numLANAs, lanaIndex++, gNBTable.table[i].transport_id,
                     &gNBTable.table[i].impl, closure);
        }
        LeaveCriticalSection(&gNBTable.cs);
    }
}
