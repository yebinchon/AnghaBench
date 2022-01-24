#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_6__ {int nVal; int /*<<< orphan*/  pDb; int /*<<< orphan*/  keyType; } ;
typedef  TYPE_1__ lsm1_vtab ;
struct TYPE_7__ {int /*<<< orphan*/  a; int /*<<< orphan*/  n; scalar_t__ errNoMem; } ;
typedef  TYPE_2__ lsm1_vblob ;

/* Variables and functions */
 int LSM_OK ; 
#define  SQLITE_BLOB 132 
 int SQLITE_ERROR ; 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
 int SQLITE_NOMEM ; 
#define  SQLITE_NULL 129 
 int SQLITE_OK ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int const**,int*) ; 
 int FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 double FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(
  sqlite3_vtab *pVTab,
  int argc,
  sqlite3_value **argv,
  sqlite_int64 *pRowid
){
  lsm1_vtab *p = (lsm1_vtab*)pVTab;
  int nKey, nKey2;
  int i;
  int rc = LSM_OK;
  const u8 *pKey, *pKey2;
  unsigned char aKey[16];
  unsigned char pSpace[16];
  lsm1_vblob val;

  if( argc==1 ){
    /* DELETE the record whose key is argv[0] */
    FUNC0(p->keyType, argv[0], aKey, &pKey, &nKey);
    FUNC4(p->pDb, pKey, nKey);
    return SQLITE_OK;
  }

  if( FUNC14(argv[0])!=SQLITE_NULL ){
    /* An UPDATE */
    FUNC0(p->keyType, argv[0], aKey, &pKey, &nKey);
    FUNC0(p->keyType, argv[1], pSpace, &pKey2, &nKey2);
    if( nKey!=nKey2 || FUNC6(pKey, pKey2, nKey)!=0 ){
      /* The UPDATE changes the PRIMARY KEY value.  DELETE the old key */
      FUNC4(p->pDb, pKey, nKey);
    }
    /* Fall through into the INSERT case to complete the UPDATE */
  }

  /* "INSERT INTO tab(lsm1_command) VALUES('....')" is used to implement
  ** special commands.
  */
  if( FUNC14(argv[3+p->nVal])!=SQLITE_NULL ){
    return SQLITE_OK;
  }
  FUNC0(p->keyType, argv[2], aKey, &pKey, &nKey);
  FUNC7(&val, 0, sizeof(val));
  for(i=0; i<p->nVal; i++){
    sqlite3_value *pArg = argv[3+i];
    u8 eType = FUNC14(pArg);
    switch( eType ){
      case SQLITE_NULL: {
        FUNC3(&val, SQLITE_NULL);
        break;
      }
      case SQLITE_INTEGER: {
        sqlite3_int64 v = FUNC12(pArg);
        if( v>=0 && v<=240/6 ){
          FUNC3(&val, v*6);
        }else{
          int n = FUNC1(pSpace, v);
          FUNC3(&val, SQLITE_INTEGER + n*6);
          FUNC2(&val, pSpace, n);
        }
        break;
      }
      case SQLITE_FLOAT: {
        double r = FUNC11(pArg);
        FUNC3(&val, SQLITE_FLOAT + 8*6);
        FUNC2(&val, (u8*)&r, sizeof(r));
        break;
      }
      case SQLITE_BLOB: {
        int n = FUNC10(pArg);
        FUNC3(&val, n*6 + SQLITE_BLOB);
        FUNC2(&val, FUNC9(pArg), n);
        break;
      }
      case SQLITE_TEXT: {
        int n = FUNC10(pArg);
        FUNC3(&val, n*6 + SQLITE_TEXT);
        FUNC2(&val, FUNC13(pArg), n);
        break;
      }
    }
  }
  if( val.errNoMem ){
    return SQLITE_NOMEM;
  }
  rc = FUNC5(p->pDb, pKey, nKey, val.a, val.n);
  FUNC8(val.a);
  return rc==LSM_OK ? SQLITE_OK : SQLITE_ERROR;
}