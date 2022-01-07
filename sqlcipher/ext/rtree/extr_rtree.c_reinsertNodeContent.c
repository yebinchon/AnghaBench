
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ iNode; } ;
typedef TYPE_1__ RtreeNode ;
typedef int RtreeCell ;
typedef int Rtree ;


 int ChooseLeaf (int *,int *,int,TYPE_1__**) ;
 int NCELL (TYPE_1__*) ;
 int SQLITE_OK ;
 int nodeGetCell (int *,TYPE_1__*,int,int *) ;
 int nodeRelease (int *,TYPE_1__*) ;
 int rtreeInsertCell (int *,TYPE_1__*,int *,int) ;

__attribute__((used)) static int reinsertNodeContent(Rtree *pRtree, RtreeNode *pNode){
  int ii;
  int rc = SQLITE_OK;
  int nCell = NCELL(pNode);

  for(ii=0; rc==SQLITE_OK && ii<nCell; ii++){
    RtreeNode *pInsert;
    RtreeCell cell;
    nodeGetCell(pRtree, pNode, ii, &cell);




    rc = ChooseLeaf(pRtree, &cell, (int)pNode->iNode, &pInsert);
    if( rc==SQLITE_OK ){
      int rc2;
      rc = rtreeInsertCell(pRtree, pInsert, &cell, (int)pNode->iNode);
      rc2 = nodeRelease(pRtree, pInsert);
      if( rc==SQLITE_OK ){
        rc = rc2;
      }
    }
  }
  return rc;
}
