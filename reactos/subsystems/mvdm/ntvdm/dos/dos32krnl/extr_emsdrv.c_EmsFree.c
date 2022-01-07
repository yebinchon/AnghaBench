
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_10__ {TYPE_1__ PageList; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef int PEMS_PAGE ;
typedef TYPE_2__* PEMS_HANDLE ;


 int ARRAY_INDEX (int ,int ) ;
 int AllocBitmap ;
 int CONTAINING_RECORD (TYPE_1__*,int ,TYPE_1__*) ;
 int EMS_PAGE ;
 int EMS_STATUS_INVALID_HANDLE ;
 int EMS_STATUS_SUCCESS ;
 scalar_t__ EMS_SYSTEM_HANDLE ;
 int EmsPageTable ;
 int FreeHandle (TYPE_2__*) ;
 TYPE_2__* GetEmsHandleRecord (scalar_t__) ;
 int InitializeListHead (TYPE_1__*) ;
 int RtlClearBits (int *,int ,int) ;
 int ValidateHandle (TYPE_2__*) ;

__attribute__((used)) static UCHAR EmsFree(USHORT Handle)
{
    PLIST_ENTRY Entry;
    PEMS_HANDLE HandleEntry = GetEmsHandleRecord(Handle);

    if (!ValidateHandle(HandleEntry))
        return EMS_STATUS_INVALID_HANDLE;

    for (Entry = HandleEntry->PageList.Flink;
         Entry != &HandleEntry->PageList;
         Entry = Entry->Flink)
    {
        PEMS_PAGE PageEntry = (PEMS_PAGE)CONTAINING_RECORD(Entry, EMS_PAGE, Entry);
        ULONG PageNumber = ARRAY_INDEX(PageEntry, EmsPageTable);


        RtlClearBits(&AllocBitmap, PageNumber, 1);
    }

    InitializeListHead(&HandleEntry->PageList);

    if (Handle != EMS_SYSTEM_HANDLE)
        FreeHandle(HandleEntry);

    return EMS_STATUS_SUCCESS;
}
