
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ OwnerPsp; } ;
typedef TYPE_1__* PDOS_MCB ;


 TYPE_1__* SEGMENT_TO_MCB (scalar_t__) ;

VOID DosChangeMemoryOwner(WORD Segment, WORD NewOwner)
{
    PDOS_MCB Mcb = SEGMENT_TO_MCB(Segment - 1);
    Mcb->OwnerPsp = NewOwner;
}
