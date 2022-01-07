
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_5__ {size_t tableSize; TYPE_1__* table; } ;
struct TYPE_4__ {scalar_t__ transport_id; scalar_t__ transport; } ;
typedef TYPE_1__ NetBIOSAdapter ;


 int TRACE (char*,...) ;
 TYPE_3__ gNBTable ;

__attribute__((used)) static NetBIOSAdapter *nbGetAdapter(UCHAR lana)
{
    NetBIOSAdapter *ret = ((void*)0);

    TRACE(": lana %d, num allocated adapters %d\n", lana, gNBTable.tableSize);
    if (lana < gNBTable.tableSize && gNBTable.table[lana].transport_id != 0
     && gNBTable.table[lana].transport)
        ret = &gNBTable.table[lana];
    TRACE("returning %p\n", ret);
    return ret;
}
