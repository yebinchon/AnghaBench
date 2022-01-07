
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (unsigned int*) ;
 int HUFC_ALLOC_TAG ;
 int HUF_WORKSPACE_SIZE_U32 ;
 size_t HUF_compress4X_wksp (void*,size_t,void const*,size_t,unsigned int,unsigned int,unsigned int*,int) ;
 int NonPagedPool ;

size_t HUF_compress2 (void* dst, size_t dstSize,
                const void* src, size_t srcSize,
                unsigned maxSymbolValue, unsigned huffLog)
{
    unsigned* workSpace = ExAllocatePoolWithTag(NonPagedPool, sizeof(unsigned) * HUF_WORKSPACE_SIZE_U32, HUFC_ALLOC_TAG);
    size_t ret;

    if (!workSpace)
        return 0;

    ret = HUF_compress4X_wksp(dst, dstSize, src, srcSize, maxSymbolValue, huffLog, workSpace, sizeof(unsigned) * HUF_WORKSPACE_SIZE_U32);

    ExFreePool(workSpace);

    return ret;
}
