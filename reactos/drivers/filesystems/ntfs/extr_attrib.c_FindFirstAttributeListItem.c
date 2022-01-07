
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* NonResidentCur; TYPE_1__* NonResidentStart; } ;
struct TYPE_5__ {scalar_t__ Type; } ;
typedef TYPE_1__* PNTFS_ATTRIBUTE_LIST_ITEM ;
typedef TYPE_2__* PFIND_ATTR_CONTXT ;
typedef int NTSTATUS ;


 scalar_t__ AttributeEnd ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;

NTSTATUS
FindFirstAttributeListItem(PFIND_ATTR_CONTXT Context,
                           PNTFS_ATTRIBUTE_LIST_ITEM *Item)
{
    if (Context->NonResidentStart == ((void*)0) || Context->NonResidentStart->Type == AttributeEnd)
    {
        return STATUS_UNSUCCESSFUL;
    }

    Context->NonResidentCur = Context->NonResidentStart;
    *Item = Context->NonResidentCur;
    return STATUS_SUCCESS;
}
