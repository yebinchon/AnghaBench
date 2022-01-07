
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eStage; scalar_t__ rc; scalar_t__ zErrmsg; scalar_t__ dbRbu; scalar_t__ dbMain; int objiter; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef char* LPWSTR ;


 scalar_t__ MoveFileW (char*,char*) ;
 scalar_t__ RBU_STAGE_MOVE ;
 scalar_t__ SQLITE_IOERR ;
 void* SQLITE_IOERR_NOMEM ;
 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int rbuFileSuffix3 (char const*,char*) ;
 scalar_t__ rbuIsVacuum (TYPE_1__*) ;
 int rbuLockDatabase (TYPE_1__*) ;
 int rbuObjIterFinalize (int *) ;
 int rbuOpenDatabase (TYPE_1__*,int ) ;
 int rbuSetupCheckpoint (TYPE_1__*,int ) ;
 char* rbuWinUtf8ToUnicode (char*) ;
 scalar_t__ rename (char*,char*) ;
 int sqlite3_close (scalar_t__) ;
 char* sqlite3_db_filename (scalar_t__,char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;

__attribute__((used)) static void rbuMoveOalFile(sqlite3rbu *p){
  const char *zBase = sqlite3_db_filename(p->dbMain, "main");
  const char *zMove = zBase;
  char *zOal;
  char *zWal;

  if( rbuIsVacuum(p) ){
    zMove = sqlite3_db_filename(p->dbRbu, "main");
  }
  zOal = sqlite3_mprintf("%s-oal", zMove);
  zWal = sqlite3_mprintf("%s-wal", zMove);

  assert( p->eStage==RBU_STAGE_MOVE );
  assert( p->rc==SQLITE_OK && p->zErrmsg==0 );
  if( zWal==0 || zOal==0 ){
    p->rc = SQLITE_NOMEM;
  }else{







    rbuLockDatabase(p);
    if( p->rc==SQLITE_OK ){
      rbuFileSuffix3(zBase, zWal);
      rbuFileSuffix3(zBase, zOal);


      rbuObjIterFinalize(&p->objiter);
      sqlite3_close(p->dbRbu);
      sqlite3_close(p->dbMain);
      p->dbMain = 0;
      p->dbRbu = 0;
      p->rc = rename(zOal, zWal) ? SQLITE_IOERR : SQLITE_OK;


      if( p->rc==SQLITE_OK ){
        rbuOpenDatabase(p, 0);
        rbuSetupCheckpoint(p, 0);
      }
    }
  }

  sqlite3_free(zWal);
  sqlite3_free(zOal);
}
