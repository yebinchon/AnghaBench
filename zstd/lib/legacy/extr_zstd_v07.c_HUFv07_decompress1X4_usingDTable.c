
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tableType; } ;
typedef int HUFv07_DTable ;
typedef TYPE_1__ DTableDesc ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t HUFv07_decompress1X4_usingDTable_internal (void*,size_t,void const*,size_t,int const*) ;
 TYPE_1__ HUFv07_getDTableDesc (int const*) ;

size_t HUFv07_decompress1X4_usingDTable(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const HUFv07_DTable* DTable)
{
    DTableDesc dtd = HUFv07_getDTableDesc(DTable);
    if (dtd.tableType != 1) return ERROR(GENERIC);
    return HUFv07_decompress1X4_usingDTable_internal(dst, dstSize, cSrc, cSrcSize, DTable);
}
