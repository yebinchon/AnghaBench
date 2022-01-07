
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;
typedef scalar_t__ sqlite3_int64 ;


 int lsm1GetVarint64 (unsigned char const*,int,int*) ;

__attribute__((used)) static int lsm1GetSignedVarint64(
  const unsigned char *z,
  int n,
  sqlite3_int64 *pResult
){
  sqlite3_uint64 u = 0;
  n = lsm1GetVarint64(z, n, &u);
  if( u&1 ){
    *pResult = -1 - (sqlite3_int64)(u>>1);
  }else{
    *pResult = (sqlite3_int64)(u>>1);
  }
  return n;
}
