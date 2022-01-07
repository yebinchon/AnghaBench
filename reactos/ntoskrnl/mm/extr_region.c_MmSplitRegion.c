
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* ULONG ;
struct TYPE_6__ {int Length; int RegionListEntry; void* Protect; void* Type; } ;
typedef int SIZE_T ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PMM_REGION ;
typedef int (* PMM_ALTER_REGION_FUNC ) (int ,scalar_t__,int,void*,void*,void*,void*) ;
typedef int PMMSUPPORT ;
typedef int MM_REGION ;


 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int InsertAfterEntry (int *,int *) ;
 int NonPagedPool ;
 int RemoveEntryList (int *) ;
 int TAG_MM_REGION ;
 int min (int,int) ;

__attribute__((used)) static PMM_REGION
MmSplitRegion(PMM_REGION InitialRegion, PVOID InitialBaseAddress,
              PVOID StartAddress, SIZE_T Length, ULONG NewType,
              ULONG NewProtect, PMMSUPPORT AddressSpace,
              PMM_ALTER_REGION_FUNC AlterFunc)
{
    PMM_REGION NewRegion1;
    PMM_REGION NewRegion2;
    SIZE_T InternalLength;


    NewRegion2 = ExAllocatePoolWithTag(NonPagedPool, sizeof(MM_REGION),
                                       TAG_MM_REGION);
    if (NewRegion2 == ((void*)0))
    {
        return(((void*)0));
    }


    NewRegion1 = ExAllocatePoolWithTag(NonPagedPool, sizeof(MM_REGION),
                                       TAG_MM_REGION);
    if (NewRegion1 == ((void*)0))
    {
        ExFreePoolWithTag(NewRegion2, TAG_MM_REGION);
        return(((void*)0));
    }
    NewRegion1->Type = NewType;
    NewRegion1->Protect = NewProtect;
    InternalLength = ((char*)InitialBaseAddress + InitialRegion->Length) - (char*)StartAddress;
    InternalLength = min(InternalLength, Length);
    NewRegion1->Length = InternalLength;
    InsertAfterEntry(&InitialRegion->RegionListEntry,
                     &NewRegion1->RegionListEntry);





    AlterFunc(AddressSpace, StartAddress, InternalLength, InitialRegion->Type,
              InitialRegion->Protect, NewType, NewProtect);





    if (((char*)InitialBaseAddress + InitialRegion->Length) > ((char*)StartAddress + Length))
    {
        NewRegion2->Type = InitialRegion->Type;
        NewRegion2->Protect = InitialRegion->Protect;
        NewRegion2->Length = ((char*)InitialBaseAddress + InitialRegion->Length) -
                             ((char*)StartAddress + Length);
        InsertAfterEntry(&NewRegion1->RegionListEntry,
                         &NewRegion2->RegionListEntry);
    }
    else
    {
        ExFreePoolWithTag(NewRegion2, TAG_MM_REGION);
    }


    if (InitialBaseAddress == StartAddress)
    {
        RemoveEntryList(&InitialRegion->RegionListEntry);
        ExFreePoolWithTag(InitialRegion, TAG_MM_REGION);
    }
    else
    {
        InitialRegion->Length = (char*)StartAddress - (char*)InitialBaseAddress;
    }

    return(NewRegion1);
}
