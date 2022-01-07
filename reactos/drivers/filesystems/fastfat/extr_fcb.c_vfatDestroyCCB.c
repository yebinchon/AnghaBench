
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int CcbLookasideList; } ;
struct TYPE_6__ {scalar_t__ Buffer; } ;
struct TYPE_7__ {TYPE_1__ SearchPattern; } ;
typedef TYPE_2__* PVFATCCB ;


 int ExFreePoolWithTag (scalar_t__,int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_2__*) ;
 int TAG_SEARCH ;
 TYPE_4__* VfatGlobalData ;

VOID
vfatDestroyCCB(
    PVFATCCB pCcb)
{
    if (pCcb->SearchPattern.Buffer)
    {
        ExFreePoolWithTag(pCcb->SearchPattern.Buffer, TAG_SEARCH);
    }
    ExFreeToNPagedLookasideList(&VfatGlobalData->CcbLookasideList, pCcb);
}
