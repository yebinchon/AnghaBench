
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int iTerm; TYPE_3__* aTerm; int iCol; int pCsr; } ;
typedef TYPE_2__ TermOffsetCtx ;
struct TYPE_9__ {int iOff; char* pList; int iPos; } ;
typedef TYPE_3__ TermOffset ;
struct TYPE_10__ {TYPE_1__* pPhrase; } ;
struct TYPE_7__ {int nToken; } ;
typedef TYPE_4__ Fts3Expr ;


 int UNUSED_PARAMETER (int) ;
 int assert_fts3_nc (int) ;
 int fts3GetDeltaPosition (char**,int*) ;
 int sqlite3Fts3EvalPhrasePoslist (int ,TYPE_4__*,int ,char**) ;

__attribute__((used)) static int fts3ExprTermOffsetInit(Fts3Expr *pExpr, int iPhrase, void *ctx){
  TermOffsetCtx *p = (TermOffsetCtx *)ctx;
  int nTerm;
  int iTerm;
  char *pList;
  int iPos = 0;
  int rc;

  UNUSED_PARAMETER(iPhrase);
  rc = sqlite3Fts3EvalPhrasePoslist(p->pCsr, pExpr, p->iCol, &pList);
  nTerm = pExpr->pPhrase->nToken;
  if( pList ){
    fts3GetDeltaPosition(&pList, &iPos);
    assert_fts3_nc( iPos>=0 );
  }

  for(iTerm=0; iTerm<nTerm; iTerm++){
    TermOffset *pT = &p->aTerm[p->iTerm++];
    pT->iOff = nTerm-iTerm-1;
    pT->pList = pList;
    pT->iPos = iPos;
  }

  return rc;
}
