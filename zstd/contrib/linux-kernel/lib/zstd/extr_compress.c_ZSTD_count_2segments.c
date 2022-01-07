
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int * MIN (int const*,int const*) ;
 size_t const ZSTD_count (int const*,int const*,int const*) ;

__attribute__((used)) static size_t ZSTD_count_2segments(const BYTE *ip, const BYTE *match, const BYTE *iEnd, const BYTE *mEnd, const BYTE *iStart)
{
 const BYTE *const vEnd = MIN(ip + (mEnd - match), iEnd);
 size_t const matchLength = ZSTD_count(ip, match, vEnd);
 if (match + matchLength != mEnd)
  return matchLength;
 return matchLength + ZSTD_count(ip + matchLength, iStart, iEnd);
}
