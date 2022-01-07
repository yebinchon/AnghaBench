
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFFv05_DCtx ;


 size_t ZBUFFv05_decompressInitDictionary (int *,int *,int ) ;

size_t ZBUFFv05_decompressInit(ZBUFFv05_DCtx* zbc)
{
    return ZBUFFv05_decompressInitDictionary(zbc, ((void*)0), 0);
}
