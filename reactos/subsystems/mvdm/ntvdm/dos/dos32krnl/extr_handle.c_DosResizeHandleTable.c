
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_5__ {scalar_t__ CurrentPsp; } ;
struct TYPE_4__ {scalar_t__ HandleTableSize; void* HandleTablePtr; int HandleTable; } ;
typedef TYPE_1__* PDOS_PSP ;
typedef int LPBYTE ;
typedef int BOOLEAN ;


 scalar_t__ DEFAULT_JFT_SIZE ;
 scalar_t__ DosAllocateMemory (scalar_t__,int *) ;
 int DosFreeMemory (scalar_t__) ;
 int DosResizeMemory (scalar_t__,scalar_t__,int *) ;
 int FALSE ;
 int FAR_POINTER (void*) ;
 scalar_t__ HIWORD (void*) ;
 int LOWORD (void*) ;
 void* MAKELONG (int,scalar_t__) ;
 int RtlCopyMemory (int ,int ,scalar_t__) ;
 TYPE_1__* SEGMENT_TO_PSP (scalar_t__) ;
 int SEG_OFF_TO_PTR (scalar_t__,int ) ;
 TYPE_2__* Sda ;
 int TRUE ;

BOOLEAN DosResizeHandleTable(WORD NewSize)
{
    PDOS_PSP PspBlock;
    LPBYTE HandleTable;
    WORD Segment;


    PspBlock = SEGMENT_TO_PSP(Sda->CurrentPsp);

    if (NewSize == PspBlock->HandleTableSize)
    {

        return TRUE;
    }

    if (PspBlock->HandleTableSize > DEFAULT_JFT_SIZE)
    {

        Segment = (LOWORD(PspBlock->HandleTablePtr) >> 4) + HIWORD(PspBlock->HandleTablePtr);

        if (NewSize <= DEFAULT_JFT_SIZE)
        {

            HandleTable = FAR_POINTER(PspBlock->HandleTablePtr);


            RtlCopyMemory(PspBlock->HandleTable, HandleTable, NewSize);


            DosFreeMemory(Segment);


            PspBlock->HandleTableSize = NewSize;
            PspBlock->HandleTablePtr = MAKELONG(0x18, Sda->CurrentPsp);
        }
        else
        {

            if (!DosResizeMemory(Segment, NewSize, ((void*)0)))
            {

                Segment = DosAllocateMemory(NewSize, ((void*)0));
                if (Segment == 0) return FALSE;


                HandleTable = SEG_OFF_TO_PTR(Segment, 0);


                RtlCopyMemory(HandleTable,
                              FAR_POINTER(PspBlock->HandleTablePtr),
                              PspBlock->HandleTableSize);


                PspBlock->HandleTablePtr = MAKELONG(0, Segment);
            }


            PspBlock->HandleTableSize = NewSize;
        }
    }
    else if (NewSize > DEFAULT_JFT_SIZE)
    {
        Segment = DosAllocateMemory(NewSize, ((void*)0));
        if (Segment == 0) return FALSE;


        HandleTable = SEG_OFF_TO_PTR(Segment, 0);


        RtlCopyMemory(HandleTable,
                      FAR_POINTER(PspBlock->HandleTablePtr),
                      PspBlock->HandleTableSize);


        PspBlock->HandleTableSize = NewSize;
        PspBlock->HandleTablePtr = MAKELONG(0, Segment);
    }

    return TRUE;
}
