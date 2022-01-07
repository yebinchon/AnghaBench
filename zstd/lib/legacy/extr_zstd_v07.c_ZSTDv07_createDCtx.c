
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv07_DCtx ;


 int * ZSTDv07_createDCtx_advanced (int ) ;
 int defaultCustomMem ;

ZSTDv07_DCtx* ZSTDv07_createDCtx(void)
{
    return ZSTDv07_createDCtx_advanced(defaultCustomMem);
}
