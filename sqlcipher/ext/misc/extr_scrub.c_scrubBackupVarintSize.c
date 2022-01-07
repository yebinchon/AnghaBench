
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int scrubBackupVarintSize(const u8 *z){
  int i;
  for(i=0; i<8; i++){
    if( (z[i]&0x80)==0 ){ return i+1; }
  }
  return 9;
}
