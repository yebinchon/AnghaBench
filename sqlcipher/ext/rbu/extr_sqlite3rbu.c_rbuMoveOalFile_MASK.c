#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ eStage; scalar_t__ rc; scalar_t__ zErrmsg; scalar_t__ dbRbu; scalar_t__ dbMain; int /*<<< orphan*/  objiter; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  char* LPWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ RBU_STAGE_MOVE ; 
 scalar_t__ SQLITE_IOERR ; 
 void* SQLITE_IOERR_NOMEM ; 
 scalar_t__ SQLITE_NOMEM ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 char* FUNC11 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*,char const*) ; 

__attribute__((used)) static void FUNC14(sqlite3rbu *p){
  const char *zBase = FUNC11(p->dbMain, "main");
  const char *zMove = zBase;
  char *zOal;
  char *zWal;

  if( FUNC3(p) ){
    zMove = FUNC11(p->dbRbu, "main");
  }
  zOal = FUNC13("%s-oal", zMove);
  zWal = FUNC13("%s-wal", zMove);

  FUNC1( p->eStage==RBU_STAGE_MOVE );
  FUNC1( p->rc==SQLITE_OK && p->zErrmsg==0 );
  if( zWal==0 || zOal==0 ){
    p->rc = SQLITE_NOMEM;
  }else{
    /* Move the *-oal file to *-wal. At this point connection p->db is
    ** holding a SHARED lock on the target database file (because it is
    ** in WAL mode). So no other connection may be writing the db. 
    **
    ** In order to ensure that there are no database readers, an EXCLUSIVE
    ** lock is obtained here before the *-oal is moved to *-wal.
    */
    FUNC4(p);
    if( p->rc==SQLITE_OK ){
      FUNC2(zBase, zWal);
      FUNC2(zBase, zOal);

      /* Re-open the databases. */
      FUNC5(&p->objiter);
      FUNC10(p->dbRbu);
      FUNC10(p->dbMain);
      p->dbMain = 0;
      p->dbRbu = 0;

#if defined(_WIN32_WCE)
      {
        LPWSTR zWideOal;
        LPWSTR zWideWal;

        zWideOal = rbuWinUtf8ToUnicode(zOal);
        if( zWideOal ){
          zWideWal = rbuWinUtf8ToUnicode(zWal);
          if( zWideWal ){
            if( MoveFileW(zWideOal, zWideWal) ){
              p->rc = SQLITE_OK;
            }else{
              p->rc = SQLITE_IOERR;
            }
            sqlite3_free(zWideWal);
          }else{
            p->rc = SQLITE_IOERR_NOMEM;
          }
          sqlite3_free(zWideOal);
        }else{
          p->rc = SQLITE_IOERR_NOMEM;
        }
      }
#else
      p->rc = FUNC9(zOal, zWal) ? SQLITE_IOERR : SQLITE_OK;
#endif

      if( p->rc==SQLITE_OK ){
        FUNC6(p, 0);
        FUNC7(p, 0);
      }
    }
  }

  FUNC12(zWal);
  FUNC12(zOal);
}