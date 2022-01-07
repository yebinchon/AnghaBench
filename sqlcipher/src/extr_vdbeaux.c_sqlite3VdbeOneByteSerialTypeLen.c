
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int assert (int) ;
 int* sqlite3SmallTypeSizes ;

u8 sqlite3VdbeOneByteSerialTypeLen(u8 serial_type){
  assert( serial_type<128 );
  return sqlite3SmallTypeSizes[serial_type];
}
