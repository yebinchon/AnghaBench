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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int iNodeSize; int nBytesPerCell; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int RTREE_MAXCELLS ; 
 int SQLITE_CORRUPT_VTAB ; 
 int SQLITE_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC5(
  sqlite3 *db,                    /* Database handle */
  Rtree *pRtree,                  /* Rtree handle */
  int isCreate,                   /* True for xCreate, false for xConnect */
  char **pzErr                    /* OUT: Error message, if any */
){
  int rc;
  char *zSql;
  if( isCreate ){
    int iPageSize = 0;
    zSql = FUNC4("PRAGMA %Q.page_size", pRtree->zDb);
    rc = FUNC1(db, zSql, &iPageSize);
    if( rc==SQLITE_OK ){
      pRtree->iNodeSize = iPageSize-64;
      if( (4+pRtree->nBytesPerCell*RTREE_MAXCELLS)<pRtree->iNodeSize ){
        pRtree->iNodeSize = 4+pRtree->nBytesPerCell*RTREE_MAXCELLS;
      }
    }else{
      *pzErr = FUNC4("%s", FUNC2(db));
    }
  }else{
    zSql = FUNC4(
        "SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1",
        pRtree->zDb, pRtree->zName
    );
    rc = FUNC1(db, zSql, &pRtree->iNodeSize);
    if( rc!=SQLITE_OK ){
      *pzErr = FUNC4("%s", FUNC2(db));
    }else if( pRtree->iNodeSize<(512-64) ){
      rc = SQLITE_CORRUPT_VTAB;
      FUNC0(pRtree);
      *pzErr = FUNC4("undersize RTree blobs in \"%q_node\"",
                               pRtree->zName);
    }
  }

  FUNC3(zSql);
  return rc;
}