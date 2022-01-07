
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUF_CElt ;
typedef int BYTE ;
typedef int BIT_CStream_t ;


 size_t BIT_closeCStream (int *) ;
 size_t BIT_initCStream (int *,int *,int) ;
 int HUF_FLUSHBITS (int *) ;
 int HUF_FLUSHBITS_1 (int *) ;
 int HUF_FLUSHBITS_2 (int *) ;
 int HUF_encodeSymbol (int *,int const,int const*) ;
 scalar_t__ HUF_isError (size_t const) ;

size_t HUF_compress1X_usingCTable(void *dst, size_t dstSize, const void *src, size_t srcSize, const HUF_CElt *CTable)
{
 const BYTE *ip = (const BYTE *)src;
 BYTE *const ostart = (BYTE *)dst;
 BYTE *const oend = ostart + dstSize;
 BYTE *op = ostart;
 size_t n;
 BIT_CStream_t bitC;


 if (dstSize < 8)
  return 0;
 {
  size_t const initErr = BIT_initCStream(&bitC, op, oend - op);
  if (HUF_isError(initErr))
   return 0;
 }

 n = srcSize & ~3;
 switch (srcSize & 3) {
 case 3: HUF_encodeSymbol(&bitC, ip[n + 2], CTable); HUF_FLUSHBITS_2(&bitC);
 case 2: HUF_encodeSymbol(&bitC, ip[n + 1], CTable); HUF_FLUSHBITS_1(&bitC);
 case 1: HUF_encodeSymbol(&bitC, ip[n + 0], CTable); HUF_FLUSHBITS(&bitC);
 case 0:
 default:;
 }

 for (; n > 0; n -= 4) {
  HUF_encodeSymbol(&bitC, ip[n - 1], CTable);
  HUF_FLUSHBITS_1(&bitC);
  HUF_encodeSymbol(&bitC, ip[n - 2], CTable);
  HUF_FLUSHBITS_2(&bitC);
  HUF_encodeSymbol(&bitC, ip[n - 3], CTable);
  HUF_FLUSHBITS_1(&bitC);
  HUF_encodeSymbol(&bitC, ip[n - 4], CTable);
  HUF_FLUSHBITS(&bitC);
 }

 return BIT_closeCStream(&bitC);
}
