
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int i64 ;


 int lsmSqlite4GetVarint64 (int const*,int *) ;

int lsmVarintGet64(const u8 *aData, i64 *piVal){
  return lsmSqlite4GetVarint64(aData, (u64 *)piVal);
}
