
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_15__ {TYPE_3__* pPhrase; int member_1; int member_0; } ;
typedef TYPE_1__ TokenCtx ;
struct TYPE_21__ {int nCol; } ;
struct TYPE_20__ {int nPhrase; TYPE_4__* pRoot; TYPE_3__** apExprPhrase; int pConfig; int pIndex; } ;
struct TYPE_19__ {int nPhrase; TYPE_3__** apPhrase; TYPE_7__* pColset; } ;
struct TYPE_18__ {int xNext; int eType; TYPE_5__* pNear; } ;
struct TYPE_17__ {int nTerm; TYPE_2__* aTerm; TYPE_4__* pNode; } ;
struct TYPE_16__ {char* zTerm; scalar_t__ bFirst; scalar_t__ pSynonym; int bPrefix; } ;
typedef TYPE_2__ Fts5ExprTerm ;
typedef TYPE_3__ Fts5ExprPhrase ;
typedef TYPE_4__ Fts5ExprNode ;
typedef TYPE_5__ Fts5ExprNearset ;
typedef TYPE_6__ Fts5Expr ;
typedef TYPE_7__ Fts5Colset ;


 int FTS5_STRING ;
 int FTS5_TERM ;
 int FTS5_TOKEN_COLOCATED ;
 int SQLITE_OK ;
 int fts5ExprNodeNext_STRING ;
 int fts5ExprNodeNext_TERM ;
 int fts5ExprPhraseFree (TYPE_3__*) ;
 int fts5ParseTokenize (void*,int,char const*,int,int ,int ) ;
 int memcpy (TYPE_7__*,TYPE_7__*,size_t) ;
 int sqlite3Fts5ExprFree (TYPE_6__*) ;
 TYPE_3__* sqlite3Fts5MallocZero (int*,int) ;
 scalar_t__ strlen (char const*) ;

int sqlite3Fts5ExprClonePhrase(
  Fts5Expr *pExpr,
  int iPhrase,
  Fts5Expr **ppNew
){
  int rc = SQLITE_OK;
  Fts5ExprPhrase *pOrig;
  Fts5Expr *pNew = 0;
  TokenCtx sCtx = {0,0};

  pOrig = pExpr->apExprPhrase[iPhrase];
  pNew = (Fts5Expr*)sqlite3Fts5MallocZero(&rc, sizeof(Fts5Expr));
  if( rc==SQLITE_OK ){
    pNew->apExprPhrase = (Fts5ExprPhrase**)sqlite3Fts5MallocZero(&rc,
        sizeof(Fts5ExprPhrase*));
  }
  if( rc==SQLITE_OK ){
    pNew->pRoot = (Fts5ExprNode*)sqlite3Fts5MallocZero(&rc,
        sizeof(Fts5ExprNode));
  }
  if( rc==SQLITE_OK ){
    pNew->pRoot->pNear = (Fts5ExprNearset*)sqlite3Fts5MallocZero(&rc,
        sizeof(Fts5ExprNearset) + sizeof(Fts5ExprPhrase*));
  }
  if( rc==SQLITE_OK ){
    Fts5Colset *pColsetOrig = pOrig->pNode->pNear->pColset;
    if( pColsetOrig ){
      sqlite3_int64 nByte;
      Fts5Colset *pColset;
      nByte = sizeof(Fts5Colset) + (pColsetOrig->nCol-1) * sizeof(int);
      pColset = (Fts5Colset*)sqlite3Fts5MallocZero(&rc, nByte);
      if( pColset ){
        memcpy(pColset, pColsetOrig, (size_t)nByte);
      }
      pNew->pRoot->pNear->pColset = pColset;
    }
  }

  if( pOrig->nTerm ){
    int i;
    for(i=0; rc==SQLITE_OK && i<pOrig->nTerm; i++){
      int tflags = 0;
      Fts5ExprTerm *p;
      for(p=&pOrig->aTerm[i]; p && rc==SQLITE_OK; p=p->pSynonym){
        const char *zTerm = p->zTerm;
        rc = fts5ParseTokenize((void*)&sCtx, tflags, zTerm, (int)strlen(zTerm),
            0, 0);
        tflags = FTS5_TOKEN_COLOCATED;
      }
      if( rc==SQLITE_OK ){
        sCtx.pPhrase->aTerm[i].bPrefix = pOrig->aTerm[i].bPrefix;
        sCtx.pPhrase->aTerm[i].bFirst = pOrig->aTerm[i].bFirst;
      }
    }
  }else{


    sCtx.pPhrase = sqlite3Fts5MallocZero(&rc, sizeof(Fts5ExprPhrase));
  }

  if( rc==SQLITE_OK ){

    pNew->pIndex = pExpr->pIndex;
    pNew->pConfig = pExpr->pConfig;
    pNew->nPhrase = 1;
    pNew->apExprPhrase[0] = sCtx.pPhrase;
    pNew->pRoot->pNear->apPhrase[0] = sCtx.pPhrase;
    pNew->pRoot->pNear->nPhrase = 1;
    sCtx.pPhrase->pNode = pNew->pRoot;

    if( pOrig->nTerm==1
     && pOrig->aTerm[0].pSynonym==0
     && pOrig->aTerm[0].bFirst==0
    ){
      pNew->pRoot->eType = FTS5_TERM;
      pNew->pRoot->xNext = fts5ExprNodeNext_TERM;
    }else{
      pNew->pRoot->eType = FTS5_STRING;
      pNew->pRoot->xNext = fts5ExprNodeNext_STRING;
    }
  }else{
    sqlite3Fts5ExprFree(pNew);
    fts5ExprPhraseFree(sCtx.pPhrase);
    pNew = 0;
  }

  *ppNew = pNew;
  return rc;
}
