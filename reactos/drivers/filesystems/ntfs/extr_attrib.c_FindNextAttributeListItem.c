
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PNTFS_ATTRIBUTE_LIST_ITEM ;
typedef int PFIND_ATTR_CONTXT ;
typedef int NTSTATUS ;


 int * InternalGetNextAttributeListItem (int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;

NTSTATUS
FindNextAttributeListItem(PFIND_ATTR_CONTXT Context,
                          PNTFS_ATTRIBUTE_LIST_ITEM *Item)
{
    *Item = InternalGetNextAttributeListItem(Context);
    if (*Item == ((void*)0))
    {
        return STATUS_UNSUCCESSFUL;
    }
    return STATUS_SUCCESS;
}
