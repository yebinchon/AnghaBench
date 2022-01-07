
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int i64 ;
struct TYPE_24__ {scalar_t__ iDepth; int nNodeRef; TYPE_1__* pDeleted; int pDeleteRowid; } ;
struct TYPE_23__ {int isDirty; struct TYPE_23__* pNext; int zData; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ Rtree ;


 scalar_t__ CORRUPT_DB ;
 int NCELL (TYPE_1__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 int deleteCell (TYPE_2__*,TYPE_1__*,int,int ) ;
 int findLeafNode (TYPE_2__*,int ,TYPE_1__**,int ) ;
 int nodeAcquire (TYPE_2__*,int,TYPE_1__*,TYPE_1__**) ;
 int nodeGetRowid (TYPE_2__*,TYPE_1__*,int ) ;
 int nodeRelease (TYPE_2__*,TYPE_1__*) ;
 int nodeRowidIndex (TYPE_2__*,TYPE_1__*,int ,int*) ;
 int reinsertNodeContent (TYPE_2__*,TYPE_1__*) ;
 int removeNode (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 int sqlite3_bind_int64 (int ,int,int ) ;
 int sqlite3_free (TYPE_1__*) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;
 int writeInt16 (int ,scalar_t__) ;

__attribute__((used)) static int rtreeDeleteRowid(Rtree *pRtree, sqlite3_int64 iDelete){
  int rc;
  RtreeNode *pLeaf = 0;
  int iCell;
  RtreeNode *pRoot = 0;



  rc = nodeAcquire(pRtree, 1, 0, &pRoot);




  if( rc==SQLITE_OK ){
    rc = findLeafNode(pRtree, iDelete, &pLeaf, 0);
  }






  if( rc==SQLITE_OK && pLeaf ){
    int rc2;
    rc = nodeRowidIndex(pRtree, pLeaf, iDelete, &iCell);
    if( rc==SQLITE_OK ){
      rc = deleteCell(pRtree, pLeaf, iCell, 0);
    }
    rc2 = nodeRelease(pRtree, pLeaf);
    if( rc==SQLITE_OK ){
      rc = rc2;
    }
  }


  if( rc==SQLITE_OK ){
    sqlite3_bind_int64(pRtree->pDeleteRowid, 1, iDelete);
    sqlite3_step(pRtree->pDeleteRowid);
    rc = sqlite3_reset(pRtree->pDeleteRowid);
  }
  if( rc==SQLITE_OK && pRtree->iDepth>0 && NCELL(pRoot)==1 ){
    int rc2;
    RtreeNode *pChild = 0;
    i64 iChild = nodeGetRowid(pRtree, pRoot, 0);
    rc = nodeAcquire(pRtree, iChild, pRoot, &pChild);
    if( rc==SQLITE_OK ){
      rc = removeNode(pRtree, pChild, pRtree->iDepth-1);
    }
    rc2 = nodeRelease(pRtree, pChild);
    if( rc==SQLITE_OK ) rc = rc2;
    if( rc==SQLITE_OK ){
      pRtree->iDepth--;
      writeInt16(pRoot->zData, pRtree->iDepth);
      pRoot->isDirty = 1;
    }
  }


  for(pLeaf=pRtree->pDeleted; pLeaf; pLeaf=pRtree->pDeleted){
    if( rc==SQLITE_OK ){
      rc = reinsertNodeContent(pRtree, pLeaf);
    }
    pRtree->pDeleted = pLeaf->pNext;
    pRtree->nNodeRef--;
    sqlite3_free(pLeaf);
  }


  if( rc==SQLITE_OK ){
    rc = nodeRelease(pRtree, pRoot);
  }else{
    nodeRelease(pRtree, pRoot);
  }

  return rc;
}
