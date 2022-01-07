
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_4__ {scalar_t__ Address; scalar_t__ Size; scalar_t__ LockCount; } ;
typedef TYPE_1__* PXMS_HANDLE ;
typedef int PVOID ;
typedef scalar_t__ DWORD ;


 int AllocBitmap ;
 int FreeBlocks ;
 TYPE_1__* GetXmsHandleRecord (scalar_t__) ;
 scalar_t__ REAL_TO_PHYS (scalar_t__) ;
 scalar_t__ RtlAreBitsClear (int *,scalar_t__,scalar_t__) ;
 int RtlClearBits (int *,scalar_t__,scalar_t__) ;
 scalar_t__ RtlFindNextForwardRunClear (int *,scalar_t__,scalar_t__*) ;
 int RtlMoveMemory (int ,int ,scalar_t__) ;
 int RtlSetBits (int *,scalar_t__,scalar_t__) ;
 int ValidateXmsHandle (TYPE_1__*) ;
 scalar_t__ XMS_ADDRESS ;
 scalar_t__ XMS_BLOCKS ;
 scalar_t__ XMS_BLOCK_SIZE ;
 int XMS_STATUS_INVALID_HANDLE ;
 int XMS_STATUS_LOCKED ;
 int XMS_STATUS_OUT_OF_MEMORY ;
 int XMS_STATUS_SUCCESS ;

__attribute__((used)) static UCHAR XmsRealloc(WORD Handle, WORD NewSize)
{
    DWORD BlockNumber;
    PXMS_HANDLE HandleEntry = GetXmsHandleRecord(Handle);
    DWORD CurrentIndex = 0;
    ULONG RunStart;
    ULONG RunSize;

    if (!ValidateXmsHandle(HandleEntry))
        return XMS_STATUS_INVALID_HANDLE;

    if (HandleEntry->LockCount)
        return XMS_STATUS_LOCKED;


    BlockNumber = (HandleEntry->Address - XMS_ADDRESS) / XMS_BLOCK_SIZE;

    if (NewSize < HandleEntry->Size)
    {

        RtlClearBits(&AllocBitmap, BlockNumber + NewSize, HandleEntry->Size - NewSize);
        FreeBlocks += HandleEntry->Size - NewSize;
        HandleEntry->Size = NewSize;
    }
    else if (NewSize > HandleEntry->Size)
    {

        if (RtlAreBitsClear(&AllocBitmap,
                            BlockNumber + HandleEntry->Size,
                            NewSize - HandleEntry->Size))
        {

            RtlSetBits(&AllocBitmap,
                       BlockNumber + HandleEntry->Size,
                       NewSize - HandleEntry->Size);
            FreeBlocks -= NewSize - HandleEntry->Size;
            HandleEntry->Size = NewSize;


            return XMS_STATUS_SUCCESS;
        }


        RtlClearBits(&AllocBitmap, BlockNumber, HandleEntry->Size);


        while (CurrentIndex < XMS_BLOCKS)
        {
            RunSize = RtlFindNextForwardRunClear(&AllocBitmap, CurrentIndex, &RunStart);
            if (RunSize == 0) break;

            if (RunSize >= NewSize)
            {

                RtlSetBits(&AllocBitmap, RunStart, NewSize);


                RtlMoveMemory((PVOID)REAL_TO_PHYS(XMS_ADDRESS + RunStart * XMS_BLOCK_SIZE),
                              (PVOID)REAL_TO_PHYS(HandleEntry->Address),
                              HandleEntry->Size * XMS_BLOCK_SIZE);


                HandleEntry->Address = XMS_ADDRESS + RunStart * XMS_BLOCK_SIZE;
                HandleEntry->Size = NewSize;


                FreeBlocks -= NewSize - HandleEntry->Size;

                return XMS_STATUS_SUCCESS;
            }


            CurrentIndex = RunStart + RunSize;
        }


        RtlSetBits(&AllocBitmap, BlockNumber, HandleEntry->Size);
        return XMS_STATUS_OUT_OF_MEMORY;
    }

    return XMS_STATUS_SUCCESS;
}
