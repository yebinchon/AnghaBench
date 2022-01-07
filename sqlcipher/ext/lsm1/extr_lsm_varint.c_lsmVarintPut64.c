
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ i64 ;


 int lsmSqlite4PutVarint64 (int *,int ) ;

int lsmVarintPut64(u8 *aData, i64 iVal){
  return lsmSqlite4PutVarint64(aData, (u64)iVal);
}
