
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;



u64 lsmGetU64(u8 *aOut){
  return ((u64)aOut[0] << 56)
       + ((u64)aOut[1] << 48)
       + ((u64)aOut[2] << 40)
       + ((u64)aOut[3] << 32)
       + ((u64)aOut[4] << 24)
       + ((u32)aOut[5] << 16)
       + ((u32)aOut[6] << 8)
       + ((u32)aOut[7]);
}
