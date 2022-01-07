
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int huffNodeTable ;
typedef unsigned int U32 ;
typedef scalar_t__ HUF_repeat ;
typedef int HUF_CElt ;
typedef int BYTE ;


 int CHECK_V_F (size_t const,int ) ;
 size_t ERROR (int ) ;
 int FSE_count_wksp (unsigned int*,unsigned int*,int const*,size_t,unsigned int*) ;
 int GENERIC ;
 size_t HUF_BLOCKSIZE_MAX ;
 int HUF_SYMBOLVALUE_MAX ;
 unsigned int HUF_TABLELOG_DEFAULT ;
 unsigned int HUF_TABLELOG_MAX ;
 int HUF_buildCTable_wksp (int *,unsigned int*,unsigned int,unsigned int,void*,size_t) ;
 size_t HUF_compressCTable_internal (int * const,int *,int * const,void const*,size_t,unsigned int,int *) ;
 size_t HUF_estimateCompressedSize (int *,unsigned int*,unsigned int) ;
 unsigned int HUF_optimalTableLog (unsigned int,size_t,unsigned int) ;
 scalar_t__ HUF_repeat_check ;
 scalar_t__ HUF_repeat_none ;
 scalar_t__ HUF_repeat_valid ;
 int HUF_validateCTable (int *,unsigned int*,unsigned int) ;
 int HUF_writeCTable_wksp (int *,size_t,int *,unsigned int,unsigned int,void*,size_t) ;
 size_t const hSize ;
 size_t largest ;
 size_t const maxBits ;
 int memcpy (int *,int *,size_t const) ;
 int memset (int *,int ,size_t const) ;
 int srcSize_wrong ;
 int tableLog_tooLarge ;

__attribute__((used)) static size_t HUF_compress_internal(void *dst, size_t dstSize, const void *src, size_t srcSize, unsigned maxSymbolValue, unsigned huffLog,
        unsigned singleStream, void *workSpace, size_t wkspSize, HUF_CElt *oldHufTable, HUF_repeat *repeat, int preferRepeat)
{
 BYTE *const ostart = (BYTE *)dst;
 BYTE *const oend = ostart + dstSize;
 BYTE *op = ostart;

 U32 *count;
 size_t const countSize = sizeof(U32) * (HUF_SYMBOLVALUE_MAX + 1);
 HUF_CElt *CTable;
 size_t const CTableSize = sizeof(HUF_CElt) * (HUF_SYMBOLVALUE_MAX + 1);


 if (wkspSize < sizeof(huffNodeTable) + countSize + CTableSize)
  return ERROR(GENERIC);
 if (!srcSize)
  return 0;
 if (!dstSize)
  return 0;
 if (srcSize > HUF_BLOCKSIZE_MAX)
  return ERROR(srcSize_wrong);
 if (huffLog > HUF_TABLELOG_MAX)
  return ERROR(tableLog_tooLarge);
 if (!maxSymbolValue)
  maxSymbolValue = HUF_SYMBOLVALUE_MAX;
 if (!huffLog)
  huffLog = HUF_TABLELOG_DEFAULT;

 count = (U32 *)workSpace;
 workSpace = (BYTE *)workSpace + countSize;
 wkspSize -= countSize;
 CTable = (HUF_CElt *)workSpace;
 workSpace = (BYTE *)workSpace + CTableSize;
 wkspSize -= CTableSize;


 if (preferRepeat && repeat && *repeat == HUF_repeat_valid) {
  return HUF_compressCTable_internal(ostart, op, oend, src, srcSize, singleStream, oldHufTable);
 }


 {
  CHECK_V_F(largest, FSE_count_wksp(count, &maxSymbolValue, (const BYTE *)src, srcSize, (U32 *)workSpace));
  if (largest == srcSize) {
   *ostart = ((const BYTE *)src)[0];
   return 1;
  }
  if (largest <= (srcSize >> 7) + 1)
   return 0;
 }


 if (repeat && *repeat == HUF_repeat_check && !HUF_validateCTable(oldHufTable, count, maxSymbolValue)) {
  *repeat = HUF_repeat_none;
 }

 if (preferRepeat && repeat && *repeat != HUF_repeat_none) {
  return HUF_compressCTable_internal(ostart, op, oend, src, srcSize, singleStream, oldHufTable);
 }


 huffLog = HUF_optimalTableLog(huffLog, srcSize, maxSymbolValue);
 {
  CHECK_V_F(maxBits, HUF_buildCTable_wksp(CTable, count, maxSymbolValue, huffLog, workSpace, wkspSize));
  huffLog = (U32)maxBits;

  memset(CTable + maxSymbolValue + 1, 0, CTableSize - (maxSymbolValue + 1) * sizeof(HUF_CElt));
 }


 {
  CHECK_V_F(hSize, HUF_writeCTable_wksp(op, dstSize, CTable, maxSymbolValue, huffLog, workSpace, wkspSize));

  if (repeat && *repeat != HUF_repeat_none) {
   size_t const oldSize = HUF_estimateCompressedSize(oldHufTable, count, maxSymbolValue);
   size_t const newSize = HUF_estimateCompressedSize(CTable, count, maxSymbolValue);
   if (oldSize <= hSize + newSize || hSize + 12 >= srcSize) {
    return HUF_compressCTable_internal(ostart, op, oend, src, srcSize, singleStream, oldHufTable);
   }
  }

  if (hSize + 12ul >= srcSize) {
   return 0;
  }
  op += hSize;
  if (repeat) {
   *repeat = HUF_repeat_none;
  }
  if (oldHufTable) {
   memcpy(oldHufTable, CTable, CTableSize);
  }
 }
 return HUF_compressCTable_internal(ostart, op, oend, src, srcSize, singleStream, CTable);
}
