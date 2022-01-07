
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int UCHAR ;
struct TYPE_4__ {int Address; scalar_t__ Size; scalar_t__ Handle; scalar_t__ LockCount; } ;
typedef TYPE_1__* PXMS_HANDLE ;
typedef int DWORD ;


 int AllocBitmap ;
 int FreeBlocks ;
 TYPE_1__* GetXmsHandleRecord (int ) ;
 int RtlClearBits (int *,int,scalar_t__) ;
 int ValidateXmsHandle (TYPE_1__*) ;
 int XMS_ADDRESS ;
 int XMS_BLOCK_SIZE ;
 int XMS_STATUS_INVALID_HANDLE ;
 int XMS_STATUS_LOCKED ;
 int XMS_STATUS_SUCCESS ;

__attribute__((used)) static UCHAR XmsFree(WORD Handle)
{
    DWORD BlockNumber;
    PXMS_HANDLE HandleEntry = GetXmsHandleRecord(Handle);

    if (!ValidateXmsHandle(HandleEntry))
        return XMS_STATUS_INVALID_HANDLE;

    if (HandleEntry->LockCount)
        return XMS_STATUS_LOCKED;

    BlockNumber = (HandleEntry->Address - XMS_ADDRESS) / XMS_BLOCK_SIZE;
    RtlClearBits(&AllocBitmap, BlockNumber, HandleEntry->Size);

    HandleEntry->Handle = 0;
    FreeBlocks += HandleEntry->Size;

    return XMS_STATUS_SUCCESS;
}
