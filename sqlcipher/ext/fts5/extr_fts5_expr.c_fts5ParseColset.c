
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int nCol; int* aiCol; } ;
struct TYPE_10__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_9__ {int nCol; } ;
typedef TYPE_2__ Fts5Parse ;
typedef TYPE_3__ Fts5Colset ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 TYPE_3__* sqlite3_realloc64 (TYPE_3__*,int) ;

__attribute__((used)) static Fts5Colset *fts5ParseColset(
  Fts5Parse *pParse,
  Fts5Colset *p,
  int iCol
){
  int nCol = p ? p->nCol : 0;
  Fts5Colset *pNew;

  assert( pParse->rc==SQLITE_OK );
  assert( iCol>=0 && iCol<pParse->pConfig->nCol );

  pNew = sqlite3_realloc64(p, sizeof(Fts5Colset) + sizeof(int)*nCol);
  if( pNew==0 ){
    pParse->rc = SQLITE_NOMEM;
  }else{
    int *aiCol = pNew->aiCol;
    int i, j;
    for(i=0; i<nCol; i++){
      if( aiCol[i]==iCol ) return pNew;
      if( aiCol[i]>iCol ) break;
    }
    for(j=nCol; j>i; j--){
      aiCol[j] = aiCol[j-1];
    }
    aiCol[i] = iCol;
    pNew->nCol = nCol+1;



    for(i=1; i<pNew->nCol; i++) assert( pNew->aiCol[i]>pNew->aiCol[i-1] );

  }

  return pNew;
}
