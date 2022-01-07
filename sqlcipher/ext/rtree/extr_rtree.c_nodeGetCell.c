
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_11__ {int nBytesPerCell; int nDim2; } ;
struct TYPE_10__ {int * aCoord; int iRowid; } ;
struct TYPE_9__ {int * zData; } ;
typedef TYPE_1__ RtreeNode ;
typedef int RtreeCoord ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;


 int nodeGetRowid (TYPE_3__*,TYPE_1__*,int) ;
 int readCoord (int *,int *) ;

__attribute__((used)) static void nodeGetCell(
  Rtree *pRtree,
  RtreeNode *pNode,
  int iCell,
  RtreeCell *pCell
){
  u8 *pData;
  RtreeCoord *pCoord;
  int ii = 0;
  pCell->iRowid = nodeGetRowid(pRtree, pNode, iCell);
  pData = pNode->zData + (12 + pRtree->nBytesPerCell*iCell);
  pCoord = pCell->aCoord;
  do{
    readCoord(pData, &pCoord[ii]);
    readCoord(pData+4, &pCoord[ii+1]);
    pData += 8;
    ii += 2;
  }while( ii<pRtree->nDim2 );
}
