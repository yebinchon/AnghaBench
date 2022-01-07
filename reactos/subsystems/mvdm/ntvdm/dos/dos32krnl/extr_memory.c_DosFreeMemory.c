
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_6__ {void* LastErrorCode; } ;
struct TYPE_5__ {scalar_t__ BlockType; scalar_t__ OwnerPsp; } ;
typedef TYPE_1__* PDOS_MCB ;
typedef int BOOLEAN ;


 int DPRINT (char*,scalar_t__) ;
 int DosMemValidate () ;
 void* ERROR_INVALID_BLOCK ;
 int FALSE ;
 TYPE_1__* SEGMENT_TO_MCB (scalar_t__) ;
 TYPE_3__* Sda ;
 int TRUE ;
 int ValidateMcb (TYPE_1__*) ;

BOOLEAN DosFreeMemory(WORD BlockData)
{
    PDOS_MCB Mcb = SEGMENT_TO_MCB(BlockData - 1);

    DPRINT("DosFreeMemory: BlockData 0x%04X\n", BlockData);

    if (BlockData == 0)
    {
        Sda->LastErrorCode = ERROR_INVALID_BLOCK;
        return FALSE;
    }

    DosMemValidate();


    if (!ValidateMcb(Mcb))
    {
        DPRINT("MCB block type '%c' not valid!\n", Mcb->BlockType);
        Sda->LastErrorCode = ERROR_INVALID_BLOCK;
        return FALSE;
    }


    Mcb->OwnerPsp = 0;

    return TRUE;
}
