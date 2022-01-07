
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t HIST_countFast_wksp (unsigned int*,unsigned int*,void const*,size_t,unsigned int*) ;
 size_t HIST_count_parallel_wksp (unsigned int*,unsigned int*,void const*,size_t,int,unsigned int*) ;

size_t HIST_count_wksp(unsigned* count, unsigned* maxSymbolValuePtr,
                 const void* source, size_t sourceSize, unsigned* workSpace)
{
    if (*maxSymbolValuePtr < 255)
        return HIST_count_parallel_wksp(count, maxSymbolValuePtr, source, sourceSize, 1, workSpace);
    *maxSymbolValuePtr = 255;
    return HIST_countFast_wksp(count, maxSymbolValuePtr, source, sourceSize, workSpace);
}
