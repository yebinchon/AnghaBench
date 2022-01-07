
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tableType; } ;
typedef int HUF_DTable ;
typedef TYPE_1__ DTableDesc ;


 size_t HUF_decompress4X2_usingDTable_internal (void*,size_t,void const*,size_t,int const*) ;
 size_t HUF_decompress4X4_usingDTable_internal (void*,size_t,void const*,size_t,int const*) ;
 TYPE_1__ HUF_getDTableDesc (int const*) ;

size_t HUF_decompress4X_usingDTable(void *dst, size_t maxDstSize, const void *cSrc, size_t cSrcSize, const HUF_DTable *DTable)
{
 DTableDesc const dtd = HUF_getDTableDesc(DTable);
 return dtd.tableType ? HUF_decompress4X4_usingDTable_internal(dst, maxDstSize, cSrc, cSrcSize, DTable)
        : HUF_decompress4X2_usingDTable_internal(dst, maxDstSize, cSrc, cSrcSize, DTable);
}
