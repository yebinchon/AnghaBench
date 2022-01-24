#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int rc; scalar_t__ dbMain; scalar_t__ dbRbu; scalar_t__ zTarget; char* zRbu; scalar_t__ zState; int nRbu; scalar_t__ eStage; void* zErrmsg; TYPE_1__* pRbuFd; int /*<<< orphan*/  zStateDb; } ;
typedef  TYPE_2__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_14__ {scalar_t__ eStage; } ;
struct TYPE_12__ {scalar_t__ bNolock; scalar_t__ pWalFd; } ;
typedef  TYPE_3__ RbuState ;

/* Variables and functions */
 int /*<<< orphan*/  RBU_CREATE_STATE ; 
 scalar_t__ RBU_STAGE_MOVE ; 
 void* SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_FCNTL_RBU ; 
 int /*<<< orphan*/  SQLITE_FCNTL_RBUCNT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_NOTFOUND ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ **,void**,char*) ; 
 int /*<<< orphan*/  rbuFossilDeltaFunc ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,char*,...) ; 
 void* FUNC9 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  rbuTargetNameFunc ; 
 int /*<<< orphan*/  rbuTmpInsertFunc ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC12 (scalar_t__,char*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (scalar_t__,char*) ; 
 void* FUNC14 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC15 (scalar_t__,char*,int /*<<< orphan*/ ,void*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 void* FUNC18 (char*,...) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (char*) ; 

__attribute__((used)) static void FUNC21(sqlite3rbu *p, int *pbRetry){
  FUNC0( p->rc || (p->dbMain==0 && p->dbRbu==0) );
  FUNC0( p->rc || FUNC5(p) || p->zTarget!=0 );

  /* Open the RBU database */
  p->dbRbu = FUNC9(p, p->zRbu, 1);

  if( p->rc==SQLITE_OK && FUNC5(p) ){
    FUNC15(p->dbRbu, "main", SQLITE_FCNTL_RBUCNT, (void*)p);
    if( p->zState==0 ){
      const char *zFile = FUNC13(p->dbRbu, "main");
      p->zState = FUNC7(p, "file://%s-vacuum?modeof=%s", zFile, zFile);
    }
  }

  /* If using separate RBU and state databases, attach the state database to
  ** the RBU db handle now.  */
  if( p->zState ){
    FUNC8(p, p->dbRbu, "ATTACH %Q AS stat", p->zState);
    FUNC2(p->zStateDb, "stat", 4);
  }else{
    FUNC2(p->zStateDb, "main", 4);
  }

#if 0
  if( p->rc==SQLITE_OK && rbuIsVacuum(p) ){
    p->rc = sqlite3_exec(p->dbRbu, "BEGIN", 0, 0, 0);
  }
#endif

  /* If it has not already been created, create the rbu_state table */
  FUNC8(p, p->dbRbu, RBU_CREATE_STATE, p->zStateDb);

#if 0
  if( rbuIsVacuum(p) ){
    if( p->rc==SQLITE_OK ){
      int rc2;
      int bOk = 0;
      sqlite3_stmt *pCnt = 0;
      p->rc = prepareAndCollectError(p->dbRbu, &pCnt, &p->zErrmsg,
          "SELECT count(*) FROM stat.sqlite_master"
      );
      if( p->rc==SQLITE_OK 
       && sqlite3_step(pCnt)==SQLITE_ROW
       && 1==sqlite3_column_int(pCnt, 0)
      ){
        bOk = 1;
      }
      rc2 = sqlite3_finalize(pCnt);
      if( p->rc==SQLITE_OK ) p->rc = rc2;

      if( p->rc==SQLITE_OK && bOk==0 ){
        p->rc = SQLITE_ERROR;
        p->zErrmsg = sqlite3_mprintf("invalid state database");
      }
    
      if( p->rc==SQLITE_OK ){
        p->rc = sqlite3_exec(p->dbRbu, "COMMIT", 0, 0, 0);
      }
    }
  }
#endif

  if( p->rc==SQLITE_OK && FUNC5(p) ){
    int bOpen = 0;
    int rc;
    p->nRbu = 0;
    p->pRbuFd = 0;
    rc = FUNC15(p->dbRbu, "main", SQLITE_FCNTL_RBUCNT, (void*)p);
    if( rc!=SQLITE_NOTFOUND ) p->rc = rc;
    if( p->eStage>=RBU_STAGE_MOVE ){
      bOpen = 1;
    }else{
      RbuState *pState = FUNC6(p);
      if( pState ){
        bOpen = (pState->eStage>=RBU_STAGE_MOVE);
        FUNC4(pState);
      }
    }
    if( bOpen ) p->dbMain = FUNC9(p, p->zRbu, p->nRbu<=1);
  }

  p->eStage = 0;
  if( p->rc==SQLITE_OK && p->dbMain==0 ){
    if( !FUNC5(p) ){
      p->dbMain = FUNC9(p, p->zTarget, 1);
    }else if( p->pRbuFd->pWalFd ){
      if( pbRetry ){
        p->pRbuFd->bNolock = 0;
        FUNC10(p->dbRbu);
        FUNC10(p->dbMain);
        p->dbMain = 0;
        p->dbRbu = 0;
        *pbRetry = 1;
        return;
      }
      p->rc = SQLITE_ERROR;
      p->zErrmsg = FUNC18("cannot vacuum wal mode database");
    }else{
      char *zTarget;
      char *zExtra = 0;
      if( FUNC20(p->zRbu)>=5 && 0==FUNC1("file:", p->zRbu, 5) ){
        zExtra = &p->zRbu[5];
        while( *zExtra ){
          if( *zExtra++=='?' ) break;
        }
        if( *zExtra=='\0' ) zExtra = 0;
      }

      zTarget = FUNC18("file:%s-vactmp?rbu_memory=1%s%s", 
          FUNC13(p->dbRbu, "main"),
          (zExtra==0 ? "" : "&"), (zExtra==0 ? "" : zExtra)
      );

      if( zTarget==0 ){
        p->rc = SQLITE_NOMEM;
        return;
      }
      p->dbMain = FUNC9(p, zTarget, p->nRbu<=1);
      FUNC17(zTarget);
    }
  }

  if( p->rc==SQLITE_OK ){
    p->rc = FUNC12(p->dbMain, 
        "rbu_tmp_insert", -1, SQLITE_UTF8, (void*)p, rbuTmpInsertFunc, 0, 0
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = FUNC12(p->dbMain, 
        "rbu_fossil_delta", 2, SQLITE_UTF8, 0, rbuFossilDeltaFunc, 0, 0
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = FUNC12(p->dbRbu, 
        "rbu_target_name", -1, SQLITE_UTF8, (void*)p, rbuTargetNameFunc, 0, 0
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = FUNC15(p->dbMain, "main", SQLITE_FCNTL_RBU, (void*)p);
  }
  FUNC8(p, p->dbMain, "SELECT * FROM sqlite_master");

  /* Mark the database file just opened as an RBU target database. If 
  ** this call returns SQLITE_NOTFOUND, then the RBU vfs is not in use.
  ** This is an error.  */
  if( p->rc==SQLITE_OK ){
    p->rc = FUNC15(p->dbMain, "main", SQLITE_FCNTL_RBU, (void*)p);
  }

  if( p->rc==SQLITE_NOTFOUND ){
    p->rc = SQLITE_ERROR;
    p->zErrmsg = FUNC18("rbu vfs not found");
  }
}