
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef scalar_t__ ULONG_PTR ;
typedef size_t UCHAR ;
typedef int * PVOID ;
typedef int PEMS_PAGE ;
typedef int PEMS_HANDLE ;


 int ARRAY_INDEX (int ,int ) ;
 int EMS_PAGE_SIZE ;
 size_t EMS_PHYSICAL_PAGES ;
 size_t EMS_STATUS_INVALID_HANDLE ;
 size_t EMS_STATUS_INV_LOGICAL_PAGE ;
 size_t EMS_STATUS_INV_PHYSICAL_PAGE ;
 size_t EMS_STATUS_SUCCESS ;
 scalar_t__ EmsMemory ;
 int EmsPageTable ;
 int GetEmsHandleRecord (int) ;
 int GetLogicalPage (int ,int) ;
 int ** Mapping ;
 int ValidateHandle (int ) ;

__attribute__((used)) static UCHAR EmsMap(USHORT Handle, UCHAR PhysicalPage, USHORT LogicalPage)
{
    PEMS_PAGE PageEntry;
    PEMS_HANDLE HandleEntry = GetEmsHandleRecord(Handle);

    if (!ValidateHandle(HandleEntry))
        return EMS_STATUS_INVALID_HANDLE;

    if (PhysicalPage >= EMS_PHYSICAL_PAGES)
        return EMS_STATUS_INV_PHYSICAL_PAGE;

    if (LogicalPage == 0xFFFF)
    {

        Mapping[PhysicalPage] = ((void*)0);
        return EMS_STATUS_SUCCESS;
    }

    PageEntry = GetLogicalPage(HandleEntry, LogicalPage);
    if (!PageEntry) return EMS_STATUS_INV_LOGICAL_PAGE;

    Mapping[PhysicalPage] = (PVOID)((ULONG_PTR)EmsMemory
                            + ARRAY_INDEX(PageEntry, EmsPageTable) * EMS_PAGE_SIZE);
    return EMS_STATUS_SUCCESS;
}
