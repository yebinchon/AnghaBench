
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ nVal ;



void lsmPutU64(u8 *aOut, u64 nVal){
  aOut[0] = (u8)((nVal>>56) & 0xFF);
  aOut[1] = (u8)((nVal>>48) & 0xFF);
  aOut[2] = (u8)((nVal>>40) & 0xFF);
  aOut[3] = (u8)((nVal>>32) & 0xFF);
  aOut[4] = (u8)((nVal>>24) & 0xFF);
  aOut[5] = (u8)((nVal>>16) & 0xFF);
  aOut[6] = (u8)((nVal>> 8) & 0xFF);
  aOut[7] = (u8)((nVal ) & 0xFF);
}
