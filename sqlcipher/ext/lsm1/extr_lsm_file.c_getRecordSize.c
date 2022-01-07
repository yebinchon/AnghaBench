
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int getRecordSize(u8 *aBuf, int *pbFree){
  int nByte;
  nByte = (aBuf[0] & 0x7F) << 14;
  nByte += (aBuf[1] & 0x7F) << 7;
  nByte += (aBuf[2] & 0x7F);
  *pbFree = !(aBuf[1] & 0x80);
  return nByte;
}
