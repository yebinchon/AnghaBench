
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



u32 lsmGetU32(u8 *aOut){
  return ((u32)aOut[0] << 24)
       + ((u32)aOut[1] << 16)
       + ((u32)aOut[2] << 8)
       + ((u32)aOut[3]);
}
