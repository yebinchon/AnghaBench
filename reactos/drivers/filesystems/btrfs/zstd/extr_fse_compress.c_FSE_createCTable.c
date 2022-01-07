
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSE_CTable ;


 scalar_t__ ExAllocatePoolWithTag (int ,size_t,int ) ;
 int FSEC_ALLOC_TAG ;
 int FSE_CTABLE_SIZE_U32 (unsigned int,unsigned int) ;
 unsigned int FSE_TABLELOG_ABSOLUTE_MAX ;
 int PagedPool ;

FSE_CTable* FSE_createCTable (unsigned maxSymbolValue, unsigned tableLog)
{
    size_t size;
    if (tableLog > FSE_TABLELOG_ABSOLUTE_MAX) tableLog = FSE_TABLELOG_ABSOLUTE_MAX;
    size = FSE_CTABLE_SIZE_U32 (tableLog, maxSymbolValue) * sizeof(U32);
    return (FSE_CTable*)ExAllocatePoolWithTag(PagedPool, size, FSEC_ALLOC_TAG);
}
