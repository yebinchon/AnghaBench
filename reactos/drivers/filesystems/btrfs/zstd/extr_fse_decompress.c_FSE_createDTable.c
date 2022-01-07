
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSE_DTable ;


 scalar_t__ ExAllocatePoolWithTag (int ,int,int ) ;
 int FSED_ALLOC_TAG ;
 int FSE_DTABLE_SIZE_U32 (unsigned int) ;
 unsigned int FSE_TABLELOG_ABSOLUTE_MAX ;
 int PagedPool ;

FSE_DTable* FSE_createDTable (unsigned tableLog)
{
    if (tableLog > FSE_TABLELOG_ABSOLUTE_MAX) tableLog = FSE_TABLELOG_ABSOLUTE_MAX;
    return (FSE_DTable*)ExAllocatePoolWithTag(PagedPool, FSE_DTABLE_SIZE_U32(tableLog) * sizeof (U32), FSED_ALLOC_TAG);
}
