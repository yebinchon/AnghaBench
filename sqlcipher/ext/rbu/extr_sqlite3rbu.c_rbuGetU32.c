
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static u32 rbuGetU32(u8 *aBuf){
  return ((u32)aBuf[0] << 24)
       + ((u32)aBuf[1] << 16)
       + ((u32)aBuf[2] << 8)
       + ((u32)aBuf[3]);
}
