
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int i64 ;
struct TYPE_4__ {int pReadRowid; } ;
typedef int RtreeNode ;
typedef TYPE_1__ Rtree ;


 scalar_t__ SQLITE_ROW ;
 int nodeAcquire (TYPE_1__*,int ,int ,int **) ;
 int sqlite3_bind_int64 (int ,int,int ) ;
 int sqlite3_column_int64 (int ,int ) ;
 int sqlite3_reset (int ) ;
 scalar_t__ sqlite3_step (int ) ;

__attribute__((used)) static int findLeafNode(
  Rtree *pRtree,
  i64 iRowid,
  RtreeNode **ppLeaf,
  sqlite3_int64 *piNode
){
  int rc;
  *ppLeaf = 0;
  sqlite3_bind_int64(pRtree->pReadRowid, 1, iRowid);
  if( sqlite3_step(pRtree->pReadRowid)==SQLITE_ROW ){
    i64 iNode = sqlite3_column_int64(pRtree->pReadRowid, 0);
    if( piNode ) *piNode = iNode;
    rc = nodeAcquire(pRtree, iNode, 0, ppLeaf);
    sqlite3_reset(pRtree->pReadRowid);
  }else{
    rc = sqlite3_reset(pRtree->pReadRowid);
  }
  return rc;
}
