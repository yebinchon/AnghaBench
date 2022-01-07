
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_4__ {size_t tableSize; TYPE_1__* table; int enumerated; } ;
struct TYPE_3__ {scalar_t__ transport; } ;


 TYPE_2__ gNBTable ;
 int nbInternalEnum () ;

UCHAR NetBIOSNumAdapters(void)
{
    UCHAR ret, i;

    if (!gNBTable.enumerated)
        nbInternalEnum();
    for (i = 0, ret = 0; i < gNBTable.tableSize; i++)
        if (gNBTable.table[i].transport != 0)
            ret++;
    return ret;
}
