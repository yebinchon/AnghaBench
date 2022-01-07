
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int iNodeSize; int nBytesPerCell; int zName; int zDb; } ;
typedef TYPE_1__ Rtree ;


 int RTREE_IS_CORRUPT (TYPE_1__*) ;
 int RTREE_MAXCELLS ;
 int SQLITE_CORRUPT_VTAB ;
 int SQLITE_OK ;
 int getIntFromStmt (int *,char*,int*) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,...) ;

__attribute__((used)) static int getNodeSize(
  sqlite3 *db,
  Rtree *pRtree,
  int isCreate,
  char **pzErr
){
  int rc;
  char *zSql;
  if( isCreate ){
    int iPageSize = 0;
    zSql = sqlite3_mprintf("PRAGMA %Q.page_size", pRtree->zDb);
    rc = getIntFromStmt(db, zSql, &iPageSize);
    if( rc==SQLITE_OK ){
      pRtree->iNodeSize = iPageSize-64;
      if( (4+pRtree->nBytesPerCell*RTREE_MAXCELLS)<pRtree->iNodeSize ){
        pRtree->iNodeSize = 4+pRtree->nBytesPerCell*RTREE_MAXCELLS;
      }
    }else{
      *pzErr = sqlite3_mprintf("%s", sqlite3_errmsg(db));
    }
  }else{
    zSql = sqlite3_mprintf(
        "SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1",
        pRtree->zDb, pRtree->zName
    );
    rc = getIntFromStmt(db, zSql, &pRtree->iNodeSize);
    if( rc!=SQLITE_OK ){
      *pzErr = sqlite3_mprintf("%s", sqlite3_errmsg(db));
    }else if( pRtree->iNodeSize<(512-64) ){
      rc = SQLITE_CORRUPT_VTAB;
      RTREE_IS_CORRUPT(pRtree);
      *pzErr = sqlite3_mprintf("undersize RTree blobs in \"%q_node\"",
                               pRtree->zName);
    }
  }

  sqlite3_free(zSql);
  return rc;
}
