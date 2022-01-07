
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t HIST_WKSP_SIZE ;
 size_t HIST_countFast_wksp (unsigned int*,unsigned int*,void const*,size_t,void*,size_t) ;
 size_t HIST_count_parallel_wksp (unsigned int*,unsigned int*,void const*,size_t,int ,int *) ;
 int checkMaxSymbolValue ;
 int workSpace_tooSmall ;

size_t HIST_count_wksp(unsigned* count, unsigned* maxSymbolValuePtr,
                       const void* source, size_t sourceSize,
                       void* workSpace, size_t workSpaceSize)
{
    if ((size_t)workSpace & 3) return ERROR(GENERIC);
    if (workSpaceSize < HIST_WKSP_SIZE) return ERROR(workSpace_tooSmall);
    if (*maxSymbolValuePtr < 255)
        return HIST_count_parallel_wksp(count, maxSymbolValuePtr, source, sourceSize, checkMaxSymbolValue, (U32*)workSpace);
    *maxSymbolValuePtr = 255;
    return HIST_countFast_wksp(count, maxSymbolValuePtr, source, sourceSize, workSpace, workSpaceSize);
}
