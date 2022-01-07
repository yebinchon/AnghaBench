
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tableType; } ;
typedef int HUF_DTable ;
typedef TYPE_1__ DTableDesc ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t HUF_decompress1X2_usingDTable_internal (void*,size_t,void const*,size_t,int const*) ;
 TYPE_1__ HUF_getDTableDesc (int const*) ;

size_t HUF_decompress1X2_usingDTable(void *dst, size_t dstSize, const void *cSrc, size_t cSrcSize, const HUF_DTable *DTable)
{
 DTableDesc dtd = HUF_getDTableDesc(DTable);
 if (dtd.tableType != 0)
  return ERROR(GENERIC);
 return HUF_decompress1X2_usingDTable_internal(dst, dstSize, cSrc, cSrcSize, DTable);
}
