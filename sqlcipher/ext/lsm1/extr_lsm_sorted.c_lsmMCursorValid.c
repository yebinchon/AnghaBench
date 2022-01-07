
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int* aTree; int * apTreeCsr; } ;
typedef TYPE_1__ MultiCursor ;


 int CURSOR_DATA_TREE0 ;
 int CURSOR_DATA_TREE1 ;
 int CURSOR_SEEK_EQ ;
 int lsmTreeCursorValid (int ) ;
 int multiCursorGetKey (TYPE_1__*,int,int ,void**,int ) ;

int lsmMCursorValid(MultiCursor *pCsr){
  int res = 0;
  if( pCsr->flags & CURSOR_SEEK_EQ ){
    res = 1;
  }else if( pCsr->aTree ){
    int iKey = pCsr->aTree[1];
    if( iKey==CURSOR_DATA_TREE0 || iKey==CURSOR_DATA_TREE1 ){
      res = lsmTreeCursorValid(pCsr->apTreeCsr[iKey-CURSOR_DATA_TREE0]);
    }else{
      void *pKey;
      multiCursorGetKey(pCsr, iKey, 0, &pKey, 0);
      res = pKey!=0;
    }
  }
  return res;
}
