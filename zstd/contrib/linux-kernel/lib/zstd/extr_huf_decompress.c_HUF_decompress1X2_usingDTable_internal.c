
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int tableLog; } ;
typedef int HUF_DTable ;
typedef int HUF_DEltX2 ;
typedef TYPE_1__ DTableDesc ;
typedef int BYTE ;
typedef int BIT_DStream_t ;


 int BIT_endOfDStream (int *) ;
 size_t BIT_initDStream (int *,void const*,size_t) ;
 size_t ERROR (int ) ;
 int HUF_decodeStreamX2 (int *,int *,int * const,int const* const,int const) ;
 TYPE_1__ HUF_getDTableDesc (int const*) ;
 scalar_t__ HUF_isError (size_t const) ;
 int corruption_detected ;

__attribute__((used)) static size_t HUF_decompress1X2_usingDTable_internal(void *dst, size_t dstSize, const void *cSrc, size_t cSrcSize, const HUF_DTable *DTable)
{
 BYTE *op = (BYTE *)dst;
 BYTE *const oend = op + dstSize;
 const void *dtPtr = DTable + 1;
 const HUF_DEltX2 *const dt = (const HUF_DEltX2 *)dtPtr;
 BIT_DStream_t bitD;
 DTableDesc const dtd = HUF_getDTableDesc(DTable);
 U32 const dtLog = dtd.tableLog;

 {
  size_t const errorCode = BIT_initDStream(&bitD, cSrc, cSrcSize);
  if (HUF_isError(errorCode))
   return errorCode;
 }

 HUF_decodeStreamX2(op, &bitD, oend, dt, dtLog);


 if (!BIT_endOfDStream(&bitD))
  return ERROR(corruption_detected);

 return dstSize;
}
