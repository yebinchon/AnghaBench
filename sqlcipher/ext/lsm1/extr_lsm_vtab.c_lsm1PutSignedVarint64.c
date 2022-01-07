
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sqlite3_uint64 ;
typedef int sqlite3_int64 ;


 int lsm1PutVarint64 (int *,int) ;

__attribute__((used)) static int lsm1PutSignedVarint64(u8 *z, sqlite3_int64 v){
  sqlite3_uint64 u;
  if( v>=0 ){
    u = (sqlite3_uint64)v;
    return lsm1PutVarint64(z, u*2);
  }else{
    u = (sqlite3_uint64)(-1-v);
    return lsm1PutVarint64(z, u*2+1);
  }
}
