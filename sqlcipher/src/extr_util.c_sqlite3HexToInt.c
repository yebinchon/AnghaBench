
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int assert (int) ;

u8 sqlite3HexToInt(int h){
  assert( (h>='0' && h<='9') || (h>='a' && h<='f') || (h>='A' && h<='F') );






  return (u8)(h & 0xf);
}
