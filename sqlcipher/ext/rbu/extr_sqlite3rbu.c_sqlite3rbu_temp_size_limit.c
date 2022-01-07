
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ szTempLimit; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef scalar_t__ sqlite3_int64 ;



sqlite3_int64 sqlite3rbu_temp_size_limit(sqlite3rbu *pRbu, sqlite3_int64 n){
  if( n>=0 ){
    pRbu->szTempLimit = n;
  }
  return pRbu->szTempLimit;
}
