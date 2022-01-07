
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONGLONG ;
struct TYPE_17__ {int AttrCtxtLookasideList; } ;
struct TYPE_13__ {scalar_t__ MappingPairsOffset; } ;
struct TYPE_16__ {TYPE_1__ NonResident; } ;
struct TYPE_15__ {int CacheRunStartLCN; int CacheRunLastLCN; TYPE_4__* pRecord; int DataRunsMCB; scalar_t__ CacheRunCurrentOffset; int CacheRunLength; int CacheRun; scalar_t__ CacheRunOffset; } ;
struct TYPE_14__ {scalar_t__ IsNonResident; int Length; } ;
typedef int PUCHAR ;
typedef TYPE_2__* PNTFS_ATTR_RECORD ;
typedef TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef int LONGLONG ;


 int ConvertDataRunsToLargeMCB (int ,int *,int *) ;
 int DPRINT1 (char*) ;
 int DecodeRun (int ,int*,int *) ;
 TYPE_3__* ExAllocateFromNPagedLookasideList (int *) ;
 TYPE_4__* ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (TYPE_4__*,int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_3__*) ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 TYPE_8__* NtfsGlobalData ;
 int RtlCopyMemory (TYPE_4__*,TYPE_2__*,int ) ;
 int TAG_NTFS ;

PNTFS_ATTR_CONTEXT
PrepareAttributeContext(PNTFS_ATTR_RECORD AttrRecord)
{
    PNTFS_ATTR_CONTEXT Context;

    Context = ExAllocateFromNPagedLookasideList(&NtfsGlobalData->AttrCtxtLookasideList);
    if(!Context)
    {
        DPRINT1("Error: Unable to allocate memory for context!\n");
        return ((void*)0);
    }


    Context->pRecord = ExAllocatePoolWithTag(NonPagedPool, AttrRecord->Length, TAG_NTFS);
    if(!Context->pRecord)
    {
        DPRINT1("Error: Unable to allocate memory for attribute record!\n");
        ExFreeToNPagedLookasideList(&NtfsGlobalData->AttrCtxtLookasideList, Context);
        return ((void*)0);
    }


    RtlCopyMemory(Context->pRecord, AttrRecord, AttrRecord->Length);

    if (AttrRecord->IsNonResident)
    {
        LONGLONG DataRunOffset;
        ULONGLONG DataRunLength;
        ULONGLONG NextVBN = 0;
        PUCHAR DataRun = (PUCHAR)((ULONG_PTR)Context->pRecord + Context->pRecord->NonResident.MappingPairsOffset);

        Context->CacheRun = DataRun;
        Context->CacheRunOffset = 0;
        Context->CacheRun = DecodeRun(Context->CacheRun, &DataRunOffset, &DataRunLength);
        Context->CacheRunLength = DataRunLength;
        if (DataRunOffset != -1)
        {

            Context->CacheRunStartLCN =
            Context->CacheRunLastLCN = DataRunOffset;
        }
        else
        {

            Context->CacheRunStartLCN = -1;
            Context->CacheRunLastLCN = 0;
        }
        Context->CacheRunCurrentOffset = 0;


        if (!NT_SUCCESS(ConvertDataRunsToLargeMCB(DataRun, &Context->DataRunsMCB, &NextVBN)))
        {
            DPRINT1("Unable to convert data runs to MCB!\n");
            ExFreePoolWithTag(Context->pRecord, TAG_NTFS);
            ExFreeToNPagedLookasideList(&NtfsGlobalData->AttrCtxtLookasideList, Context);
            return ((void*)0);
        }
    }

    return Context;
}
