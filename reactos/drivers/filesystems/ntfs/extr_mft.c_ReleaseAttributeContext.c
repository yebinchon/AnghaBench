
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {scalar_t__ IsNonResident; } ;
struct TYPE_7__ {int AttrCtxtLookasideList; } ;
struct TYPE_6__ {TYPE_5__* pRecord; int DataRunsMCB; } ;
typedef TYPE_1__* PNTFS_ATTR_CONTEXT ;


 int ExFreePoolWithTag (TYPE_5__*,int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_1__*) ;
 int FsRtlUninitializeLargeMcb (int *) ;
 TYPE_3__* NtfsGlobalData ;
 int TAG_NTFS ;

VOID
ReleaseAttributeContext(PNTFS_ATTR_CONTEXT Context)
{
    if (Context->pRecord)
    {
        if (Context->pRecord->IsNonResident)
        {
            FsRtlUninitializeLargeMcb(&Context->DataRunsMCB);
        }

        ExFreePoolWithTag(Context->pRecord, TAG_NTFS);
    }

    ExFreeToNPagedLookasideList(&NtfsGlobalData->AttrCtxtLookasideList, Context);
}
