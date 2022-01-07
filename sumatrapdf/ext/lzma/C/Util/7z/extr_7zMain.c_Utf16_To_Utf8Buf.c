
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt16 ;
struct TYPE_4__ {scalar_t__* data; } ;
typedef int SRes ;
typedef TYPE_1__ CBuf ;
typedef scalar_t__ Bool ;


 int Buf_EnsureSize (TYPE_1__*,size_t) ;
 int SZ_ERROR_FAIL ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__ Utf16_To_Utf8 (scalar_t__*,size_t*,int const*,size_t) ;

__attribute__((used)) static SRes Utf16_To_Utf8Buf(CBuf *dest, const UInt16 *src, size_t srcLen)
{
  size_t destLen = 0;
  Bool res;
  Utf16_To_Utf8(((void*)0), &destLen, src, srcLen);
  destLen += 1;
  if (!Buf_EnsureSize(dest, destLen))
    return SZ_ERROR_MEM;
  res = Utf16_To_Utf8(dest->data, &destLen, src, srcLen);
  dest->data[destLen] = 0;
  return res ? SZ_OK : SZ_ERROR_FAIL;
}
