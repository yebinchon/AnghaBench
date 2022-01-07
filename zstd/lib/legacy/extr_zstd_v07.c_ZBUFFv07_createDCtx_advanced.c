
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int opaque; scalar_t__ (* customAlloc ) (int ,int) ;int customFree; } ;
typedef TYPE_1__ ZSTDv07_customMem ;
struct TYPE_11__ {int stage; int * zd; int customMem; } ;
typedef TYPE_2__ ZBUFFv07_DCtx ;


 int ZBUFFds_init ;
 int ZBUFFv07_freeDCtx (TYPE_2__*) ;
 int * ZSTDv07_createDCtx_advanced (TYPE_1__) ;
 TYPE_1__ defaultCustomMem ;
 int memcpy (int *,TYPE_1__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ stub1 (int ,int) ;

ZBUFFv07_DCtx* ZBUFFv07_createDCtx_advanced(ZSTDv07_customMem customMem)
{
    ZBUFFv07_DCtx* zbd;

    if (!customMem.customAlloc && !customMem.customFree)
        customMem = defaultCustomMem;

    if (!customMem.customAlloc || !customMem.customFree)
        return ((void*)0);

    zbd = (ZBUFFv07_DCtx*)customMem.customAlloc(customMem.opaque, sizeof(ZBUFFv07_DCtx));
    if (zbd==((void*)0)) return ((void*)0);
    memset(zbd, 0, sizeof(ZBUFFv07_DCtx));
    memcpy(&zbd->customMem, &customMem, sizeof(ZSTDv07_customMem));
    zbd->zd = ZSTDv07_createDCtx_advanced(customMem);
    if (zbd->zd == ((void*)0)) { ZBUFFv07_freeDCtx(zbd); return ((void*)0); }
    zbd->stage = ZBUFFds_init;
    return zbd;
}
