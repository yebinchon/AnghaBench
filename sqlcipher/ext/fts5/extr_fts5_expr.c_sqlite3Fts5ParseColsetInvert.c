
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nCol; int* aiCol; } ;
struct TYPE_9__ {int rc; TYPE_1__* pConfig; } ;
struct TYPE_8__ {int nCol; } ;
typedef TYPE_2__ Fts5Parse ;
typedef TYPE_3__ Fts5Colset ;


 scalar_t__ sqlite3Fts5MallocZero (int *,int) ;
 int sqlite3_free (TYPE_3__*) ;

Fts5Colset *sqlite3Fts5ParseColsetInvert(Fts5Parse *pParse, Fts5Colset *p){
  Fts5Colset *pRet;
  int nCol = pParse->pConfig->nCol;

  pRet = (Fts5Colset*)sqlite3Fts5MallocZero(&pParse->rc,
      sizeof(Fts5Colset) + sizeof(int)*nCol
  );
  if( pRet ){
    int i;
    int iOld = 0;
    for(i=0; i<nCol; i++){
      if( iOld>=p->nCol || p->aiCol[iOld]!=i ){
        pRet->aiCol[pRet->nCol++] = i;
      }else{
        iOld++;
      }
    }
  }

  sqlite3_free(p);
  return pRet;
}
