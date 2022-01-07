
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



int lsmGetU16(u8 *aOut){
  return (aOut[0] << 8) + aOut[1];
}
