
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sqlite3_value ;
typedef int Mem ;


 int sqlite3VdbeMemSetStr (int *,void const*,int,int ,void (*) (void*)) ;

void sqlite3ValueSetStr(
  sqlite3_value *v,
  int n,
  const void *z,
  u8 enc,
  void (*xDel)(void*)
){
  if( v ) sqlite3VdbeMemSetStr((Mem *)v, z, n, enc, xDel);
}
