
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zd; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ lhSize; int stage; } ;
typedef TYPE_1__ ZBUFFv06_DCtx ;


 int ZBUFFds_loadHeader ;
 size_t ZSTDv06_decompressBegin_usingDict (int ,void const*,size_t) ;

size_t ZBUFFv06_decompressInitDictionary(ZBUFFv06_DCtx* zbd, const void* dict, size_t dictSize)
{
    zbd->stage = ZBUFFds_loadHeader;
    zbd->lhSize = zbd->inPos = zbd->outStart = zbd->outEnd = 0;
    return ZSTDv06_decompressBegin_usingDict(zbd->zd, dict, dictSize);
}
