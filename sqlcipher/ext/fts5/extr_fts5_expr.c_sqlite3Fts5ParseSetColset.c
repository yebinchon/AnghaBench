
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int zErr; int rc; TYPE_1__* pConfig; } ;
struct TYPE_5__ {scalar_t__ eDetail; } ;
typedef TYPE_2__ Fts5Parse ;
typedef int Fts5ExprNode ;
typedef int Fts5Colset ;


 scalar_t__ FTS5_DETAIL_NONE ;
 int SQLITE_ERROR ;
 int fts5ParseSetColset (TYPE_2__*,int *,int *,int **) ;
 int sqlite3_free (int *) ;
 int sqlite3_mprintf (char*) ;

void sqlite3Fts5ParseSetColset(
  Fts5Parse *pParse,
  Fts5ExprNode *pExpr,
  Fts5Colset *pColset
){
  Fts5Colset *pFree = pColset;
  if( pParse->pConfig->eDetail==FTS5_DETAIL_NONE ){
    pParse->rc = SQLITE_ERROR;
    pParse->zErr = sqlite3_mprintf(
      "fts5: column queries are not supported (detail=none)"
    );
  }else{
    fts5ParseSetColset(pParse, pExpr, pColset, &pFree);
  }
  sqlite3_free(pFree);
}
