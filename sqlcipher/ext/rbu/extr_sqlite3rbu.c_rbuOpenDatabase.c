
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int rc; scalar_t__ dbMain; scalar_t__ dbRbu; scalar_t__ zTarget; char* zRbu; scalar_t__ zState; int nRbu; scalar_t__ eStage; void* zErrmsg; TYPE_1__* pRbuFd; int zStateDb; } ;
typedef TYPE_2__ sqlite3rbu ;
typedef int sqlite3_stmt ;
struct TYPE_14__ {scalar_t__ eStage; } ;
struct TYPE_12__ {scalar_t__ bNolock; scalar_t__ pWalFd; } ;
typedef TYPE_3__ RbuState ;


 int RBU_CREATE_STATE ;
 scalar_t__ RBU_STAGE_MOVE ;
 void* SQLITE_ERROR ;
 int SQLITE_FCNTL_RBU ;
 int SQLITE_FCNTL_RBUCNT ;
 int SQLITE_NOMEM ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (int ,char*,int) ;
 int prepareAndCollectError (scalar_t__,int **,void**,char*) ;
 int rbuFossilDeltaFunc ;
 int rbuFreeState (TYPE_3__*) ;
 scalar_t__ rbuIsVacuum (TYPE_2__*) ;
 TYPE_3__* rbuLoadState (TYPE_2__*) ;
 scalar_t__ rbuMPrintf (TYPE_2__*,char*,char const*,char const*) ;
 int rbuMPrintfExec (TYPE_2__*,scalar_t__,char*,...) ;
 void* rbuOpenDbhandle (TYPE_2__*,char*,int) ;
 int rbuTargetNameFunc ;
 int rbuTmpInsertFunc ;
 int sqlite3_close (scalar_t__) ;
 int sqlite3_column_int (int *,int ) ;
 void* sqlite3_create_function (scalar_t__,char*,int,int ,void*,int ,int ,int ) ;
 char* sqlite3_db_filename (scalar_t__,char*) ;
 void* sqlite3_exec (scalar_t__,char*,int ,int ,int ) ;
 void* sqlite3_file_control (scalar_t__,char*,int ,void*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 void* sqlite3_mprintf (char*,...) ;
 scalar_t__ sqlite3_step (int *) ;
 int strlen (char*) ;

__attribute__((used)) static void rbuOpenDatabase(sqlite3rbu *p, int *pbRetry){
  assert( p->rc || (p->dbMain==0 && p->dbRbu==0) );
  assert( p->rc || rbuIsVacuum(p) || p->zTarget!=0 );


  p->dbRbu = rbuOpenDbhandle(p, p->zRbu, 1);

  if( p->rc==SQLITE_OK && rbuIsVacuum(p) ){
    sqlite3_file_control(p->dbRbu, "main", SQLITE_FCNTL_RBUCNT, (void*)p);
    if( p->zState==0 ){
      const char *zFile = sqlite3_db_filename(p->dbRbu, "main");
      p->zState = rbuMPrintf(p, "file://%s-vacuum?modeof=%s", zFile, zFile);
    }
  }



  if( p->zState ){
    rbuMPrintfExec(p, p->dbRbu, "ATTACH %Q AS stat", p->zState);
    memcpy(p->zStateDb, "stat", 4);
  }else{
    memcpy(p->zStateDb, "main", 4);
  }
  rbuMPrintfExec(p, p->dbRbu, RBU_CREATE_STATE, p->zStateDb);
  if( p->rc==SQLITE_OK && rbuIsVacuum(p) ){
    int bOpen = 0;
    int rc;
    p->nRbu = 0;
    p->pRbuFd = 0;
    rc = sqlite3_file_control(p->dbRbu, "main", SQLITE_FCNTL_RBUCNT, (void*)p);
    if( rc!=SQLITE_NOTFOUND ) p->rc = rc;
    if( p->eStage>=RBU_STAGE_MOVE ){
      bOpen = 1;
    }else{
      RbuState *pState = rbuLoadState(p);
      if( pState ){
        bOpen = (pState->eStage>=RBU_STAGE_MOVE);
        rbuFreeState(pState);
      }
    }
    if( bOpen ) p->dbMain = rbuOpenDbhandle(p, p->zRbu, p->nRbu<=1);
  }

  p->eStage = 0;
  if( p->rc==SQLITE_OK && p->dbMain==0 ){
    if( !rbuIsVacuum(p) ){
      p->dbMain = rbuOpenDbhandle(p, p->zTarget, 1);
    }else if( p->pRbuFd->pWalFd ){
      if( pbRetry ){
        p->pRbuFd->bNolock = 0;
        sqlite3_close(p->dbRbu);
        sqlite3_close(p->dbMain);
        p->dbMain = 0;
        p->dbRbu = 0;
        *pbRetry = 1;
        return;
      }
      p->rc = SQLITE_ERROR;
      p->zErrmsg = sqlite3_mprintf("cannot vacuum wal mode database");
    }else{
      char *zTarget;
      char *zExtra = 0;
      if( strlen(p->zRbu)>=5 && 0==memcmp("file:", p->zRbu, 5) ){
        zExtra = &p->zRbu[5];
        while( *zExtra ){
          if( *zExtra++=='?' ) break;
        }
        if( *zExtra=='\0' ) zExtra = 0;
      }

      zTarget = sqlite3_mprintf("file:%s-vactmp?rbu_memory=1%s%s",
          sqlite3_db_filename(p->dbRbu, "main"),
          (zExtra==0 ? "" : "&"), (zExtra==0 ? "" : zExtra)
      );

      if( zTarget==0 ){
        p->rc = SQLITE_NOMEM;
        return;
      }
      p->dbMain = rbuOpenDbhandle(p, zTarget, p->nRbu<=1);
      sqlite3_free(zTarget);
    }
  }

  if( p->rc==SQLITE_OK ){
    p->rc = sqlite3_create_function(p->dbMain,
        "rbu_tmp_insert", -1, SQLITE_UTF8, (void*)p, rbuTmpInsertFunc, 0, 0
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = sqlite3_create_function(p->dbMain,
        "rbu_fossil_delta", 2, SQLITE_UTF8, 0, rbuFossilDeltaFunc, 0, 0
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = sqlite3_create_function(p->dbRbu,
        "rbu_target_name", -1, SQLITE_UTF8, (void*)p, rbuTargetNameFunc, 0, 0
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = sqlite3_file_control(p->dbMain, "main", SQLITE_FCNTL_RBU, (void*)p);
  }
  rbuMPrintfExec(p, p->dbMain, "SELECT * FROM sqlite_master");




  if( p->rc==SQLITE_OK ){
    p->rc = sqlite3_file_control(p->dbMain, "main", SQLITE_FCNTL_RBU, (void*)p);
  }

  if( p->rc==SQLITE_NOTFOUND ){
    p->rc = SQLITE_ERROR;
    p->zErrmsg = sqlite3_mprintf("rbu vfs not found");
  }
}
