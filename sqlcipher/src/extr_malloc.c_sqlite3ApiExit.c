
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errMask; scalar_t__ mallocFailed; int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_IOERR_NOMEM ;
 int apiOomError (TYPE_1__*) ;
 int assert (int) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3ApiExit(sqlite3* db, int rc){




  assert( db!=0 );
  assert( sqlite3_mutex_held(db->mutex) );
  if( db->mallocFailed || rc==SQLITE_IOERR_NOMEM ){
    return apiOomError(db);
  }
  return rc & db->errMask;
}
