
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
struct TYPE_4__ {scalar_t__ LowestVCN; scalar_t__ HighestVCN; scalar_t__ MappingPairsOffset; } ;
struct TYPE_5__ {TYPE_1__ NonResident; } ;
typedef scalar_t__ PULONGLONG ;
typedef int PUCHAR ;
typedef TYPE_2__* PNTFS_ATTR_RECORD ;
typedef int PLONGLONG ;
typedef int BOOLEAN ;


 int DecodeRun (int ,int ,scalar_t__) ;
 int FALSE ;
 int TRUE ;

BOOLEAN
FindRun(PNTFS_ATTR_RECORD NresAttr,
        ULONGLONG vcn,
        PULONGLONG lcn,
        PULONGLONG count)
{
    if (vcn < NresAttr->NonResident.LowestVCN || vcn > NresAttr->NonResident.HighestVCN)
        return FALSE;

    DecodeRun((PUCHAR)((ULONG_PTR)NresAttr + NresAttr->NonResident.MappingPairsOffset), (PLONGLONG)lcn, count);

    return TRUE;
}
