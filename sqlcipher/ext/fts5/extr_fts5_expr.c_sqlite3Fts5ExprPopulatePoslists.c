
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_14__ {int nPhrase; TYPE_1__** apExprPhrase; } ;
struct TYPE_13__ {int iOff; TYPE_3__* aPopulator; TYPE_6__* pExpr; } ;
struct TYPE_12__ {TYPE_2__* pNear; } ;
struct TYPE_11__ {int bOk; scalar_t__ bMiss; } ;
struct TYPE_10__ {int * pColset; } ;
struct TYPE_9__ {TYPE_4__* pNode; } ;
typedef TYPE_3__ Fts5PoslistPopulator ;
typedef TYPE_4__ Fts5ExprNode ;
typedef TYPE_5__ Fts5ExprCtx ;
typedef TYPE_6__ Fts5Expr ;
typedef int Fts5Config ;
typedef int Fts5Colset ;


 int FTS5_TOKENIZE_DOCUMENT ;
 scalar_t__ fts5ExprColsetTest (int *,int) ;
 int fts5ExprPopulatePoslistsCb ;
 int sqlite3Fts5Tokenize (int *,int ,char const*,int,void*,int ) ;

int sqlite3Fts5ExprPopulatePoslists(
  Fts5Config *pConfig,
  Fts5Expr *pExpr,
  Fts5PoslistPopulator *aPopulator,
  int iCol,
  const char *z, int n
){
  int i;
  Fts5ExprCtx sCtx;
  sCtx.pExpr = pExpr;
  sCtx.aPopulator = aPopulator;
  sCtx.iOff = (((i64)iCol) << 32) - 1;

  for(i=0; i<pExpr->nPhrase; i++){
    Fts5ExprNode *pNode = pExpr->apExprPhrase[i]->pNode;
    Fts5Colset *pColset = pNode->pNear->pColset;
    if( (pColset && 0==fts5ExprColsetTest(pColset, iCol))
     || aPopulator[i].bMiss
    ){
      aPopulator[i].bOk = 0;
    }else{
      aPopulator[i].bOk = 1;
    }
  }

  return sqlite3Fts5Tokenize(pConfig,
      FTS5_TOKENIZE_DOCUMENT, z, n, (void*)&sCtx, fts5ExprPopulatePoslistsCb
  );
}
