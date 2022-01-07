
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nNodeRef; int iDepth; } ;
struct TYPE_10__ {scalar_t__ nRef; int iNode; struct TYPE_10__* pParent; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ Rtree ;


 int SQLITE_OK ;
 int assert (int) ;
 int nodeHashDelete (TYPE_2__*,TYPE_1__*) ;
 int nodeWrite (TYPE_2__*,TYPE_1__*) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int nodeRelease(Rtree *pRtree, RtreeNode *pNode){
  int rc = SQLITE_OK;
  if( pNode ){
    assert( pNode->nRef>0 );
    assert( pRtree->nNodeRef>0 );
    pNode->nRef--;
    if( pNode->nRef==0 ){
      pRtree->nNodeRef--;
      if( pNode->iNode==1 ){
        pRtree->iDepth = -1;
      }
      if( pNode->pParent ){
        rc = nodeRelease(pRtree, pNode->pParent);
      }
      if( rc==SQLITE_OK ){
        rc = nodeWrite(pRtree, pNode);
      }
      nodeHashDelete(pRtree, pNode);
      sqlite3_free(pNode);
    }
  }
  return rc;
}
