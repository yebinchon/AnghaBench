#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_11__ {int bSwarm; int nSrc; int /*<<< orphan*/  iPK; TYPE_2__* aSrc; scalar_t__ bHasContext; int /*<<< orphan*/  nMaxOpen; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ UnionTab ;
struct TYPE_12__ {scalar_t__ iMax; void* zDb; void* zTab; void* zContext; void* zFile; scalar_t__ iMin; } ;
typedef  TYPE_2__ UnionSrc ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SWARMVTAB_MAX_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC10 (int*,TYPE_1__*,int /*<<< orphan*/ *,int,char const* const*,char**) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_1__* FUNC15 (int*,int) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC17 (int*,char**,int /*<<< orphan*/ *,char*,char*,...) ; 
 int FUNC18 (TYPE_1__*,char**) ; 
 void* FUNC19 (int*,char const*) ; 

__attribute__((used)) static int FUNC20(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  UnionTab *pTab = 0;
  int rc = SQLITE_OK;
  int bSwarm = (pAux==0 ? 0 : 1);
  const char *zVtab = (bSwarm ? "swarmvtab" : "unionvtab");

  if( FUNC9("temp", argv[1]) ){
    /* unionvtab tables may only be created in the temp schema */
    *pzErr = FUNC6("%s tables must be created in TEMP schema", zVtab);
    rc = SQLITE_ERROR;
  }else if( argc<4 || (argc>4 && bSwarm==0) ){
    *pzErr = FUNC6("wrong number of arguments for %s", zVtab);
    rc = SQLITE_ERROR;
  }else{
    int nAlloc = 0;               /* Allocated size of pTab->aSrc[] */
    sqlite3_stmt *pStmt = 0;      /* Argument statement */
    char *zArg = FUNC19(&rc, argv[3]);      /* Copy of argument to CVT */

    /* Prepare the SQL statement. Instead of executing it directly, sort
    ** the results by the "minimum rowid" field. This makes it easier to
    ** check that there are no rowid range overlaps between source tables 
    ** and that the UnionTab.aSrc[] array is always sorted by rowid.  */
    FUNC11(zArg);
    pStmt = FUNC17(&rc, pzErr, db, 
        "SELECT * FROM (%z) ORDER BY 3", zArg
    );

    /* Allocate the UnionTab structure */
    pTab = FUNC15(&rc, sizeof(UnionTab));
    if( pTab ){
      FUNC0( rc==SQLITE_OK );
      pTab->db = db;
      pTab->bSwarm = bSwarm;
      pTab->nMaxOpen = SWARMVTAB_MAX_OPEN;
    }

    /* Parse other CVT arguments, if any */
    if( bSwarm ){
      FUNC10(&rc, pTab, pStmt, argc-4, &argv[4], pzErr);
    }

    /* Iterate through the rows returned by the SQL statement specified
    ** as an argument to the CREATE VIRTUAL TABLE statement. */
    while( rc==SQLITE_OK && SQLITE_ROW==FUNC8(pStmt) ){
      const char *zDb = (const char*)FUNC4(pStmt, 0);
      const char *zTab = (const char*)FUNC4(pStmt, 1);
      sqlite3_int64 iMin = FUNC3(pStmt, 2);
      sqlite3_int64 iMax = FUNC3(pStmt, 3);
      UnionSrc *pSrc;

      /* Grow the pTab->aSrc[] array if required. */
      if( nAlloc<=pTab->nSrc ){
        int nNew = nAlloc ? nAlloc*2 : 8;
        UnionSrc *aNew = (UnionSrc*)FUNC7(
            pTab->aSrc, nNew*sizeof(UnionSrc)
        );
        if( aNew==0 ){
          rc = SQLITE_NOMEM;
          break;
        }else{
          FUNC1(&aNew[pTab->nSrc], 0, (nNew-pTab->nSrc)*sizeof(UnionSrc));
          pTab->aSrc = aNew;
          nAlloc = nNew;
        }
      }

      /* Check for problems with the specified range of rowids */
      if( iMax<iMin || (pTab->nSrc>0 && iMin<=pTab->aSrc[pTab->nSrc-1].iMax) ){
        *pzErr = FUNC6("rowid range mismatch error");
        rc = SQLITE_ERROR;
      }

      if( rc==SQLITE_OK ){
        pSrc = &pTab->aSrc[pTab->nSrc++];
        pSrc->zTab = FUNC19(&rc, zTab);
        pSrc->iMin = iMin;
        pSrc->iMax = iMax;
        if( bSwarm ){
          pSrc->zFile = FUNC19(&rc, zDb);
        }else{
          pSrc->zDb = FUNC19(&rc, zDb);
        }
        if( pTab->bHasContext ){
          const char *zContext = (const char*)FUNC4(pStmt, 4);
          pSrc->zContext = FUNC19(&rc, zContext);
        }
      }
    }
    FUNC13(&rc, pStmt, pzErr);
    pStmt = 0;

    /* It is an error if the SELECT statement returned zero rows. If only
    ** because there is no way to determine the schema of the virtual 
    ** table in this case.  */
    if( rc==SQLITE_OK && pTab->nSrc==0 ){
      *pzErr = FUNC6("no source tables configured");
      rc = SQLITE_ERROR;
    }

    /* For unionvtab, verify that all source tables exist and have 
    ** compatible schemas. For swarmvtab, attach the first database and
    ** check that the first table is a rowid table only.  */
    if( rc==SQLITE_OK ){
      if( bSwarm ){
        rc = FUNC16(pTab, 0, pzErr);
      }else{
        rc = FUNC18(pTab, pzErr);
      }
    }

    /* Compose a CREATE TABLE statement and pass it to declare_vtab() */
    if( rc==SQLITE_OK ){
      UnionSrc *pSrc = &pTab->aSrc[0];
      sqlite3 *tdb = FUNC14(pTab, pSrc);
      pStmt = FUNC17(&rc, pzErr, tdb, "SELECT "
          "'CREATE TABLE xyz('"
          "    || group_concat(quote(name) || ' ' || type, ', ')"
          "    || ')',"
          "max((cid+1) * (type='INTEGER' COLLATE nocase AND pk=1))-1 "
          "FROM pragma_table_info(%Q, ?)", 
          pSrc->zTab, pSrc->zDb
      );
    }
    if( rc==SQLITE_OK && SQLITE_ROW==FUNC8(pStmt) ){
      const char *zDecl = (const char*)FUNC4(pStmt, 0);
      rc = FUNC5(db, zDecl);
      pTab->iPK = FUNC2(pStmt, 1);
    }

    FUNC13(&rc, pStmt, pzErr);
  }

  if( rc!=SQLITE_OK ){
    FUNC12((sqlite3_vtab*)pTab);
    pTab = 0;
  }

  *ppVtab = (sqlite3_vtab*)pTab;
  return rc;
}