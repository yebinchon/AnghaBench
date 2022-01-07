
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tableType; } ;
typedef int HUFv07_DTable ;
typedef TYPE_1__ DTableDesc ;


 size_t HUFv07_decompress4X2_usingDTable_internal (void*,size_t,void const*,size_t,int const*) ;
 size_t HUFv07_decompress4X4_usingDTable_internal (void*,size_t,void const*,size_t,int const*) ;
 TYPE_1__ HUFv07_getDTableDesc (int const*) ;

size_t HUFv07_decompress4X_usingDTable(void* dst, size_t maxDstSize,
                                    const void* cSrc, size_t cSrcSize,
                                    const HUFv07_DTable* DTable)
{
    DTableDesc const dtd = HUFv07_getDTableDesc(DTable);
    return dtd.tableType ? HUFv07_decompress4X4_usingDTable_internal(dst, maxDstSize, cSrc, cSrcSize, DTable) :
                           HUFv07_decompress4X2_usingDTable_internal(dst, maxDstSize, cSrc, cSrcSize, DTable);
}
