
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int opaque; scalar_t__ (* customAlloc ) (int ,int) ;int customFree; } ;
typedef TYPE_1__ ZSTDv07_customMem ;
struct TYPE_9__ {int customMem; } ;
typedef TYPE_2__ ZSTDv07_DCtx ;


 int ZSTDv07_decompressBegin (TYPE_2__*) ;
 TYPE_1__ defaultCustomMem ;
 int memcpy (int *,TYPE_1__*,int) ;
 scalar_t__ stub1 (int ,int) ;

ZSTDv07_DCtx* ZSTDv07_createDCtx_advanced(ZSTDv07_customMem customMem)
{
    ZSTDv07_DCtx* dctx;

    if (!customMem.customAlloc && !customMem.customFree)
        customMem = defaultCustomMem;

    if (!customMem.customAlloc || !customMem.customFree)
        return ((void*)0);

    dctx = (ZSTDv07_DCtx*) customMem.customAlloc(customMem.opaque, sizeof(ZSTDv07_DCtx));
    if (!dctx) return ((void*)0);
    memcpy(&dctx->customMem, &customMem, sizeof(ZSTDv07_customMem));
    ZSTDv07_decompressBegin(dctx);
    return dctx;
}
