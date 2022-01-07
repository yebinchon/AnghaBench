
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_5__ {size_t Handle; int Entry; } ;
struct TYPE_4__ {scalar_t__ PageCount; int PageList; scalar_t__ Allocated; } ;
typedef TYPE_1__* PEMS_HANDLE ;


 int ASSERT (int) ;
 int AllocBitmap ;
 int EMS_STATUS_INSUFFICIENT_PAGES ;
 int EMS_STATUS_SUCCESS ;
 size_t EMS_SYSTEM_HANDLE ;
 int EmsFree (size_t) ;
 TYPE_1__* EmsHandleTable ;
 TYPE_2__* EmsPageTable ;
 int InsertTailList (int *,int *) ;
 scalar_t__ RtlFindNextForwardRunClear (int *,scalar_t__,scalar_t__*) ;
 int RtlSetBits (int *,scalar_t__,scalar_t__) ;
 scalar_t__ TRUE ;

__attribute__((used)) static UCHAR InitSystemHandle(USHORT NumPages)
{




    ULONG i, CurrentIndex = 0;
    PEMS_HANDLE HandleEntry = &EmsHandleTable[EMS_SYSTEM_HANDLE];


    ASSERT(!HandleEntry->Allocated);


    HandleEntry->Allocated = TRUE;

    while (HandleEntry->PageCount < NumPages)
    {
        ULONG RunStart;
        ULONG RunSize = RtlFindNextForwardRunClear(&AllocBitmap, CurrentIndex, &RunStart);

        if (RunSize == 0)
        {

            EmsFree(EMS_SYSTEM_HANDLE);





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
            EmsPageTable[RunStart + i].Handle = EMS_SYSTEM_HANDLE;
            InsertTailList(&HandleEntry->PageList, &EmsPageTable[RunStart + i].Entry);
        }
    }

    return EMS_STATUS_SUCCESS;
}
