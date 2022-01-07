
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pErr; int mutex; scalar_t__ errCode; scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;


 scalar_t__ SQLITE_MISUSE_BKPT ;
 scalar_t__ SQLITE_NOMEM_BKPT ;
 int assert (int) ;
 char const* sqlite3ErrStr (scalar_t__) ;
 int sqlite3SafetyCheckSickOrOk (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 scalar_t__ sqlite3_value_text (scalar_t__) ;
 int testcase (int) ;

const char *sqlite3_errmsg(sqlite3 *db){
  const char *z;
  if( !db ){
    return sqlite3ErrStr(SQLITE_NOMEM_BKPT);
  }
  if( !sqlite3SafetyCheckSickOrOk(db) ){
    return sqlite3ErrStr(SQLITE_MISUSE_BKPT);
  }
  sqlite3_mutex_enter(db->mutex);
  if( db->mallocFailed ){
    z = sqlite3ErrStr(SQLITE_NOMEM_BKPT);
  }else{
    testcase( db->pErr==0 );
    z = db->errCode ? (char*)sqlite3_value_text(db->pErr) : 0;
    assert( !db->mallocFailed );
    if( z==0 ){
      z = sqlite3ErrStr(db->errCode);
    }
  }
  sqlite3_mutex_leave(db->mutex);
  return z;
}
