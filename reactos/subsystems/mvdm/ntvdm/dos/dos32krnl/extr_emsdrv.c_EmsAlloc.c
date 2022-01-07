
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_5__ {int Entry; int Handle; } ;
struct TYPE_4__ {scalar_t__ PageCount; int PageList; } ;
typedef int * PUSHORT ;
typedef TYPE_1__* PEMS_HANDLE ;


 int AllocBitmap ;
 TYPE_1__* CreateHandle (int *) ;
 int EMS_STATUS_INSUFFICIENT_PAGES ;
 int EMS_STATUS_NO_MORE_HANDLES ;
 int EMS_STATUS_SUCCESS ;
 int EMS_STATUS_ZERO_PAGES ;
 int EmsFree (int ) ;
 TYPE_2__* EmsPageTable ;
 int InsertTailList (int *,int *) ;
 scalar_t__ RtlFindNextForwardRunClear (int *,scalar_t__,scalar_t__*) ;
 int RtlSetBits (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static UCHAR EmsAlloc(USHORT NumPages, PUSHORT Handle)
{
    ULONG i, CurrentIndex = 0;
    PEMS_HANDLE HandleEntry;

    if (NumPages == 0) return EMS_STATUS_ZERO_PAGES;

    HandleEntry = CreateHandle(Handle);
    if (!HandleEntry) return EMS_STATUS_NO_MORE_HANDLES;

    while (HandleEntry->PageCount < NumPages)
    {
        ULONG RunStart;
        ULONG RunSize = RtlFindNextForwardRunClear(&AllocBitmap, CurrentIndex, &RunStart);

        if (RunSize == 0)
        {

            EmsFree(*Handle);
            return EMS_STATUS_INSUFFICIENT_PAGES;
        }
        else if ((HandleEntry->PageCount + RunSize) > NumPages)
        {

            RunSize = NumPages - HandleEntry->PageCount;
        }

        CurrentIndex = RunStart + RunSize;
        HandleEntry->PageCount += RunSize;
        RtlSetBits(&AllocBitmap, RunStart, RunSize);

        for (i = 0; i < RunSize; i++)
        {
            EmsPageTable[RunStart + i].Handle = *Handle;
            InsertTailList(&HandleEntry->PageList, &EmsPageTable[RunStart + i].Entry);
        }
    }

    return EMS_STATUS_SUCCESS;
}
