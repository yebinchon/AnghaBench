
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_9__ {int pReadParent; } ;
struct TYPE_8__ {int iNode; struct TYPE_8__* pParent; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ Rtree ;


 int RTREE_IS_CORRUPT (TYPE_2__*) ;
 int SQLITE_CORRUPT_VTAB ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int nodeAcquire (TYPE_2__*,scalar_t__,int ,TYPE_1__**) ;
 int sqlite3_bind_int64 (int ,int,int) ;
 scalar_t__ sqlite3_column_int64 (int ,int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int fixLeafParent(Rtree *pRtree, RtreeNode *pLeaf){
  int rc = SQLITE_OK;
  RtreeNode *pChild = pLeaf;
  while( rc==SQLITE_OK && pChild->iNode!=1 && pChild->pParent==0 ){
    int rc2 = SQLITE_OK;
    sqlite3_bind_int64(pRtree->pReadParent, 1, pChild->iNode);
    rc = sqlite3_step(pRtree->pReadParent);
    if( rc==SQLITE_ROW ){
      RtreeNode *pTest;
      i64 iNode;






      iNode = sqlite3_column_int64(pRtree->pReadParent, 0);
      for(pTest=pLeaf; pTest && pTest->iNode!=iNode; pTest=pTest->pParent);
      if( !pTest ){
        rc2 = nodeAcquire(pRtree, iNode, 0, &pChild->pParent);
      }
    }
    rc = sqlite3_reset(pRtree->pReadParent);
    if( rc==SQLITE_OK ) rc = rc2;
    if( rc==SQLITE_OK && !pChild->pParent ){
      RTREE_IS_CORRUPT(pRtree);
      rc = SQLITE_CORRUPT_VTAB;
    }
    pChild = pChild->pParent;
  }
  return rc;
}
