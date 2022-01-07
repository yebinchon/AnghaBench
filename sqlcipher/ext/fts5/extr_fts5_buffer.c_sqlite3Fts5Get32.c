
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



int sqlite3Fts5Get32(const u8 *aBuf){
  return (int)((((u32)aBuf[0])<<24) + (aBuf[1]<<16) + (aBuf[2]<<8) + aBuf[3]);
}
