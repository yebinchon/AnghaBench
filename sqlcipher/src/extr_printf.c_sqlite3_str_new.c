
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_str ;
struct TYPE_3__ {int * aLimit; } ;
typedef TYPE_1__ sqlite3 ;


 size_t SQLITE_LIMIT_LENGTH ;
 int SQLITE_MAX_LENGTH ;
 int sqlite3OomStr ;
 int sqlite3StrAccumInit (int *,int ,int ,int ,int ) ;
 int * sqlite3_malloc64 (int) ;

sqlite3_str *sqlite3_str_new(sqlite3 *db){
  sqlite3_str *p = sqlite3_malloc64(sizeof(*p));
  if( p ){
    sqlite3StrAccumInit(p, 0, 0, 0,
            db ? db->aLimit[SQLITE_LIMIT_LENGTH] : SQLITE_MAX_LENGTH);
  }else{
    p = &sqlite3OomStr;
  }
  return p;
}
