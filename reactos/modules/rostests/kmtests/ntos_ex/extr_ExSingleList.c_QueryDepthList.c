
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_3__ {struct TYPE_3__* Next; } ;
typedef TYPE_1__* PSINGLE_LIST_ENTRY ;



USHORT QueryDepthList(PSINGLE_LIST_ENTRY ListHead)
{
    USHORT Depth = 0;
    while (ListHead->Next)
    {
        ++Depth;
        ListHead = ListHead->Next;
    }
    return Depth;
}
