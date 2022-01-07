
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_stmt ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Vdbe ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3LockAndPrepare (TYPE_1__*,char const*,int,int ,int *,int **,int ) ;
 int sqlite3OomFault (TYPE_1__*) ;
 int sqlite3TransferBindings (int *,int *) ;
 TYPE_1__* sqlite3VdbeDb (int *) ;
 int sqlite3VdbeFinalize (int *) ;
 int sqlite3VdbePrepareFlags (int *) ;
 int sqlite3VdbeResetStepResult (int *) ;
 int sqlite3VdbeSwap (int *,int *) ;
 int sqlite3_mutex_held (int ) ;
 char* sqlite3_sql (int *) ;

int sqlite3Reprepare(Vdbe *p){
  int rc;
  sqlite3_stmt *pNew;
  const char *zSql;
  sqlite3 *db;
  u8 prepFlags;

  assert( sqlite3_mutex_held(sqlite3VdbeDb(p)->mutex) );
  zSql = sqlite3_sql((sqlite3_stmt *)p);
  assert( zSql!=0 );
  db = sqlite3VdbeDb(p);
  assert( sqlite3_mutex_held(db->mutex) );
  prepFlags = sqlite3VdbePrepareFlags(p);
  rc = sqlite3LockAndPrepare(db, zSql, -1, prepFlags, p, &pNew, 0);
  if( rc ){
    if( rc==SQLITE_NOMEM ){
      sqlite3OomFault(db);
    }
    assert( pNew==0 );
    return rc;
  }else{
    assert( pNew!=0 );
  }
  sqlite3VdbeSwap((Vdbe*)pNew, p);
  sqlite3TransferBindings(pNew, (sqlite3_stmt*)p);
  sqlite3VdbeResetStepResult((Vdbe*)pNew);
  sqlite3VdbeFinalize((Vdbe*)pNew);
  return SQLITE_OK;
}
