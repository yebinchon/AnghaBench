
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int iVal ;



__attribute__((used)) static void fuzzPutU64(u8 *aRec, u64 iVal){
  aRec[0] = (iVal>>56) & 0xFF;
  aRec[1] = (iVal>>48) & 0xFF;
  aRec[2] = (iVal>>40) & 0xFF;
  aRec[3] = (iVal>>32) & 0xFF;
  aRec[4] = (iVal>>24) & 0xFF;
  aRec[5] = (iVal>>16) & 0xFF;
  aRec[6] = (iVal>> 8) & 0xFF;
  aRec[7] = (iVal) & 0xFF;
}
