
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int ZSTD_hash6Ptr (void const*,int) ;
 int ZSTD_hash8Ptr (void const*,int) ;

__attribute__((used)) static size_t FASTCOVER_hashPtrToIndex(const void* p, U32 h, unsigned d) {
  if (d == 6) {
    return ZSTD_hash6Ptr(p, h) & ((1 << h) - 1);
  }
  return ZSTD_hash8Ptr(p, h) & ((1 << h) - 1);
}
