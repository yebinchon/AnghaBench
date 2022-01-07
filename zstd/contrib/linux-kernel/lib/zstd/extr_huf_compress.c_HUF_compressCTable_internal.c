
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUF_CElt ;
typedef int BYTE ;


 size_t HUF_compress1X_usingCTable (int *,int,void const*,size_t,int const*) ;
 size_t HUF_compress4X_usingCTable (int *,int,void const*,size_t,int const*) ;
 scalar_t__ HUF_isError (size_t const) ;

__attribute__((used)) static size_t HUF_compressCTable_internal(BYTE *const ostart, BYTE *op, BYTE *const oend, const void *src, size_t srcSize, unsigned singleStream,
       const HUF_CElt *CTable)
{
 size_t const cSize =
     singleStream ? HUF_compress1X_usingCTable(op, oend - op, src, srcSize, CTable) : HUF_compress4X_usingCTable(op, oend - op, src, srcSize, CTable);
 if (HUF_isError(cSize)) {
  return cSize;
 }
 if (cSize == 0) {
  return 0;
 }
 op += cSize;

 if ((size_t)(op - ostart) >= srcSize - 1) {
  return 0;
 }
 return op - ostart;
}
