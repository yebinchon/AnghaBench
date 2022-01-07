
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int iNodeSize; int nBytesPerCell; } ;
struct TYPE_8__ {int isDirty; int * zData; } ;
typedef TYPE_1__ RtreeNode ;
typedef int RtreeCell ;
typedef TYPE_2__ Rtree ;


 int NCELL (TYPE_1__*) ;
 int assert (int) ;
 int nodeOverwriteCell (TYPE_2__*,TYPE_1__*,int *,int) ;
 int writeInt16 (int *,int) ;

__attribute__((used)) static int nodeInsertCell(
  Rtree *pRtree,
  RtreeNode *pNode,
  RtreeCell *pCell
){
  int nCell;
  int nMaxCell;

  nMaxCell = (pRtree->iNodeSize-4)/pRtree->nBytesPerCell;
  nCell = NCELL(pNode);

  assert( nCell<=nMaxCell );
  if( nCell<nMaxCell ){
    nodeOverwriteCell(pRtree, pNode, pCell, nCell);
    writeInt16(&pNode->zData[2], nCell+1);
    pNode->isDirty = 1;
  }

  return (nCell==nMaxCell);
}
