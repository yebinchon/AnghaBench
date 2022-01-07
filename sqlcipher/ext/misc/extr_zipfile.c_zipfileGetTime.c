
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int sqlite3_value ;


 scalar_t__ SQLITE_NULL ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 int zipfileTime () ;

__attribute__((used)) static u32 zipfileGetTime(sqlite3_value *pVal){
  if( pVal==0 || sqlite3_value_type(pVal)==SQLITE_NULL ){
    return zipfileTime();
  }
  return (u32)sqlite3_value_int64(pVal);
}
