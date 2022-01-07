
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
struct TYPE_7__ {scalar_t__ nDim; int nLeaf; int nNonLeaf; } ;
typedef TYPE_1__ RtreeCheck ;


 int RTREE_MAX_DEPTH ;
 int assert (int) ;
 int readInt16 (int *) ;
 int readInt64 (int *) ;
 int rtreeCheckAppendMsg (TYPE_1__*,char*,int,...) ;
 int rtreeCheckCellCoord (TYPE_1__*,int,int,int *,int *) ;
 int * rtreeCheckGetNode (TYPE_1__*,int,int*) ;
 int rtreeCheckMapping (TYPE_1__*,int,int,int) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void rtreeCheckNode(
  RtreeCheck *pCheck,
  int iDepth,
  u8 *aParent,
  i64 iNode
){
  u8 *aNode = 0;
  int nNode = 0;

  assert( iNode==1 || aParent!=0 );
  assert( pCheck->nDim>0 );

  aNode = rtreeCheckGetNode(pCheck, iNode, &nNode);
  if( aNode ){
    if( nNode<4 ){
      rtreeCheckAppendMsg(pCheck,
          "Node %lld is too small (%d bytes)", iNode, nNode
      );
    }else{
      int nCell;
      int i;
      if( aParent==0 ){
        iDepth = readInt16(aNode);
        if( iDepth>RTREE_MAX_DEPTH ){
          rtreeCheckAppendMsg(pCheck, "Rtree depth out of range (%d)", iDepth);
          sqlite3_free(aNode);
          return;
        }
      }
      nCell = readInt16(&aNode[2]);
      if( (4 + nCell*(8 + pCheck->nDim*2*4))>nNode ){
        rtreeCheckAppendMsg(pCheck,
            "Node %lld is too small for cell count of %d (%d bytes)",
            iNode, nCell, nNode
        );
      }else{
        for(i=0; i<nCell; i++){
          u8 *pCell = &aNode[4 + i*(8 + pCheck->nDim*2*4)];
          i64 iVal = readInt64(pCell);
          rtreeCheckCellCoord(pCheck, iNode, i, &pCell[8], aParent);

          if( iDepth>0 ){
            rtreeCheckMapping(pCheck, 0, iVal, iNode);
            rtreeCheckNode(pCheck, iDepth-1, &pCell[8], iVal);
            pCheck->nNonLeaf++;
          }else{
            rtreeCheckMapping(pCheck, 1, iVal, iNode);
            pCheck->nLeaf++;
          }
        }
      }
    }
    sqlite3_free(aNode);
  }
}
