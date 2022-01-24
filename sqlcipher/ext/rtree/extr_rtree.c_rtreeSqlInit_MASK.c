#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_str ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int nAux; scalar_t__ zReadAuxSql; int nAuxNotNull; int /*<<< orphan*/ * pWriteAux; int /*<<< orphan*/ * pDeleteParent; int /*<<< orphan*/ * pWriteParent; int /*<<< orphan*/ * pReadParent; int /*<<< orphan*/ * pDeleteRowid; int /*<<< orphan*/ * pWriteRowid; int /*<<< orphan*/ * pReadRowid; int /*<<< orphan*/ * pDeleteNode; int /*<<< orphan*/ * pWriteNode; int /*<<< orphan*/  iNodeSize; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int N_STATEMENT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_PREPARE_NO_VTAB ; 
 int SQLITE_PREPARE_PERSISTENT ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char const*,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int const,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
  Rtree *pRtree, 
  sqlite3 *db, 
  const char *zDb, 
  const char *zPrefix, 
  int isCreate
){
  int rc = SQLITE_OK;

  #define N_STATEMENT 8
  static const char *azSql[N_STATEMENT] = {
    /* Write the xxx_node table */
    "INSERT OR REPLACE INTO '%q'.'%q_node' VALUES(?1, ?2)",
    "DELETE FROM '%q'.'%q_node' WHERE nodeno = ?1",

    /* Read and write the xxx_rowid table */
    "SELECT nodeno FROM '%q'.'%q_rowid' WHERE rowid = ?1",
    "INSERT OR REPLACE INTO '%q'.'%q_rowid' VALUES(?1, ?2)",
    "DELETE FROM '%q'.'%q_rowid' WHERE rowid = ?1",

    /* Read and write the xxx_parent table */
    "SELECT parentnode FROM '%q'.'%q_parent' WHERE nodeno = ?1",
    "INSERT OR REPLACE INTO '%q'.'%q_parent' VALUES(?1, ?2)",
    "DELETE FROM '%q'.'%q_parent' WHERE nodeno = ?1"
  };
  sqlite3_stmt **appStmt[N_STATEMENT];
  int i;
  const int f = SQLITE_PREPARE_PERSISTENT|SQLITE_PREPARE_NO_VTAB;

  pRtree->db = db;

  if( isCreate ){
    char *zCreate;
    sqlite3_str *p = FUNC8(db);
    int ii;
    FUNC6(p,
       "CREATE TABLE \"%w\".\"%w_rowid\"(rowid INTEGER PRIMARY KEY,nodeno",
       zDb, zPrefix);
    for(ii=0; ii<pRtree->nAux; ii++){
      FUNC6(p,",a%d",ii);
    }
    FUNC6(p,
      ");CREATE TABLE \"%w\".\"%w_node\"(nodeno INTEGER PRIMARY KEY,data);",
      zDb, zPrefix);
    FUNC6(p,
    "CREATE TABLE \"%w\".\"%w_parent\"(nodeno INTEGER PRIMARY KEY,parentnode);",
      zDb, zPrefix);
    FUNC6(p,
       "INSERT INTO \"%w\".\"%w_node\"VALUES(1,zeroblob(%d))",
       zDb, zPrefix, pRtree->iNodeSize);
    zCreate = FUNC7(p);
    if( !zCreate ){
      return SQLITE_NOMEM;
    }
    rc = FUNC1(db, zCreate, 0, 0, 0);
    FUNC2(zCreate);
    if( rc!=SQLITE_OK ){
      return rc;
    }
  }

  appStmt[0] = &pRtree->pWriteNode;
  appStmt[1] = &pRtree->pDeleteNode;
  appStmt[2] = &pRtree->pReadRowid;
  appStmt[3] = &pRtree->pWriteRowid;
  appStmt[4] = &pRtree->pDeleteRowid;
  appStmt[5] = &pRtree->pReadParent;
  appStmt[6] = &pRtree->pWriteParent;
  appStmt[7] = &pRtree->pDeleteParent;

  rc = FUNC0(db, pRtree);
  for(i=0; i<N_STATEMENT && rc==SQLITE_OK; i++){
    char *zSql;
    const char *zFormat;
    if( i!=3 || pRtree->nAux==0 ){
       zFormat = azSql[i];
    }else {
       /* An UPSERT is very slightly slower than REPLACE, but it is needed
       ** if there are auxiliary columns */
       zFormat = "INSERT INTO\"%w\".\"%w_rowid\"(rowid,nodeno)VALUES(?1,?2)"
                  "ON CONFLICT(rowid)DO UPDATE SET nodeno=excluded.nodeno";
    }
    zSql = FUNC3(zFormat, zDb, zPrefix);
    if( zSql ){
      rc = FUNC4(db, zSql, -1, f, appStmt[i], 0); 
    }else{
      rc = SQLITE_NOMEM;
    }
    FUNC2(zSql);
  }
  if( pRtree->nAux ){
    pRtree->zReadAuxSql = FUNC3(
       "SELECT * FROM \"%w\".\"%w_rowid\" WHERE rowid=?1",
       zDb, zPrefix);
    if( pRtree->zReadAuxSql==0 ){
      rc = SQLITE_NOMEM;
    }else{
      sqlite3_str *p = FUNC8(db);
      int ii;
      char *zSql;
      FUNC6(p, "UPDATE \"%w\".\"%w_rowid\"SET ", zDb, zPrefix);
      for(ii=0; ii<pRtree->nAux; ii++){
        if( ii ) FUNC5(p, ",", 1);
        if( ii<pRtree->nAuxNotNull ){
          FUNC6(p,"a%d=coalesce(?%d,a%d)",ii,ii+2,ii);
        }else{
          FUNC6(p,"a%d=?%d",ii,ii+2);
        }
      }
      FUNC6(p, " WHERE rowid=?1");
      zSql = FUNC7(p);
      if( zSql==0 ){
        rc = SQLITE_NOMEM;
      }else{
        rc = FUNC4(db, zSql, -1, f, &pRtree->pWriteAux, 0); 
        FUNC2(zSql);
      }
    }
  }

  return rc;
}