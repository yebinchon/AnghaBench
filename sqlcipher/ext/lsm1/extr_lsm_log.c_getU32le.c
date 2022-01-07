
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



__attribute__((used)) static u32 getU32le(u8 *aIn){
  return ((u32)aIn[3] << 24)
       + ((u32)aIn[2] << 16)
       + ((u32)aIn[1] << 8)
       + ((u32)aIn[0]);
}
