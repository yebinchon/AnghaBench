
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;


 unsigned int __builtin_bswap32 (unsigned int) ;
 unsigned int _byteswap_ulong (unsigned int) ;
 int memcpy (unsigned int*,int const*,int) ;
 int testcase (int const) ;

u32 sqlite3Get4byte(const u8 *p){
  testcase( p[0]&0x80 );
  return ((unsigned)p[0]<<24) | (p[1]<<16) | (p[2]<<8) | p[3];

}
