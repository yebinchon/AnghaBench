
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ magic; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_6__ {scalar_t__ xLog; } ;


 scalar_t__ SQLITE_MAGIC_OPEN ;
 int logBadConnection (char*) ;
 TYPE_4__ sqlite3GlobalConfig ;
 scalar_t__ sqlite3SafetyCheckSickOrOk (TYPE_1__*) ;
 int testcase (int) ;

int sqlite3SafetyCheckOk(sqlite3 *db){
  u32 magic;
  if( db==0 ){
    logBadConnection("NULL");
    return 0;
  }
  magic = db->magic;
  if( magic!=SQLITE_MAGIC_OPEN ){
    if( sqlite3SafetyCheckSickOrOk(db) ){
      testcase( sqlite3GlobalConfig.xLog!=0 );
      logBadConnection("unopened");
    }
    return 0;
  }else{
    return 1;
  }
}
