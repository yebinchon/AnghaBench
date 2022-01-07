
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUF_repeat ;
typedef int HUF_CElt ;


 size_t HUF_compress_internal (void*,size_t,void const*,size_t,unsigned int,unsigned int,int ,void*,size_t,int *,int *,int,int) ;

size_t HUF_compress4X_repeat (void* dst, size_t dstSize,
                      const void* src, size_t srcSize,
                      unsigned maxSymbolValue, unsigned huffLog,
                      void* workSpace, size_t wkspSize,
                      HUF_CElt* hufTable, HUF_repeat* repeat, int preferRepeat, int bmi2)
{
    return HUF_compress_internal(dst, dstSize, src, srcSize,
                                 maxSymbolValue, huffLog, 0 ,
                                 workSpace, wkspSize,
                                 hufTable, repeat, preferRepeat, bmi2);
}
