
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFFv06_DCtx ;


 size_t ZBUFFv06_decompressInitDictionary (int *,int *,int ) ;

size_t ZBUFFv06_decompressInit(ZBUFFv06_DCtx* zbd)
{
    return ZBUFFv06_decompressInitDictionary(zbd, ((void*)0), 0);
}
