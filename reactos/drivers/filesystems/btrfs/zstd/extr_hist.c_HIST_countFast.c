
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (unsigned int*) ;
 int HIST_ALLOC_TAG ;
 int HIST_WKSP_SIZE_U32 ;
 size_t HIST_countFast_wksp (unsigned int*,unsigned int*,void const*,size_t,unsigned int*) ;
 int NonPagedPool ;

size_t HIST_countFast(unsigned* count, unsigned* maxSymbolValuePtr,
                     const void* source, size_t sourceSize)
{
    unsigned* tmpCounters = ExAllocatePoolWithTag(NonPagedPool, sizeof(unsigned) * HIST_WKSP_SIZE_U32, HIST_ALLOC_TAG);
    size_t ret;

    if (!tmpCounters)
        return 0;

    ret = HIST_countFast_wksp(count, maxSymbolValuePtr, source, sourceSize, tmpCounters);

    ExFreePool(tmpCounters);

    return ret;
}
