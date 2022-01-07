
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int i64 ;



__attribute__((used)) static i64 fuzzGetI64(u8 *aRec){
  return (i64)(
      (((u64)aRec[0]) << 56)
    + (((u64)aRec[1]) << 48)
    + (((u64)aRec[2]) << 40)
    + (((u64)aRec[3]) << 32)
    + (((u64)aRec[4]) << 24)
    + (((u64)aRec[5]) << 16)
    + (((u64)aRec[6]) << 8)
    + (((u64)aRec[7]) << 0)
  );
}
