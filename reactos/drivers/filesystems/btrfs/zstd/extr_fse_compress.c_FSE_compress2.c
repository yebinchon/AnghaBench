
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fseWkspMax_t ;


 int DEBUG_STATIC_ASSERT (int) ;
 size_t ERROR (int ) ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int *) ;
 int FSEC_ALLOC_TAG ;
 int FSE_MAX_SYMBOL_VALUE ;
 unsigned int FSE_MAX_TABLELOG ;
 int FSE_WKSP_SIZE_U32 (unsigned int,int ) ;
 size_t FSE_compress_wksp (void*,size_t,void const*,size_t,unsigned int,unsigned int,int *,int) ;
 int NonPagedPool ;
 int tableLog_tooLarge ;

size_t FSE_compress2 (void* dst, size_t dstCapacity, const void* src, size_t srcSize, unsigned maxSymbolValue, unsigned tableLog)
{
    fseWkspMax_t* scratchBuffer;
    size_t ret;

    DEBUG_STATIC_ASSERT(sizeof(fseWkspMax_t) >= FSE_WKSP_SIZE_U32(FSE_MAX_TABLELOG, FSE_MAX_SYMBOL_VALUE));

    if (tableLog > FSE_MAX_TABLELOG)
        return ERROR(tableLog_tooLarge);

    scratchBuffer = ExAllocatePoolWithTag(NonPagedPool, sizeof(fseWkspMax_t), FSEC_ALLOC_TAG);

    if (!scratchBuffer)
        return 0;

    ret = FSE_compress_wksp(dst, dstCapacity, src, srcSize, maxSymbolValue, tableLog, scratchBuffer, sizeof(fseWkspMax_t));

    ExFreePool(scratchBuffer);

    return ret;
}
