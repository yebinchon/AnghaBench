
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int iPrevId; int pDeferred; } ;
struct TYPE_15__ {int eType; int iDocid; int bEof; int bDeferred; TYPE_3__* pPhrase; struct TYPE_15__* pRight; struct TYPE_15__* pLeft; TYPE_1__* pParent; } ;
struct TYPE_13__ {int pList; int bFreeList; } ;
struct TYPE_14__ {TYPE_2__ doclist; } ;
struct TYPE_12__ {int const eType; } ;
typedef TYPE_3__ Fts3Phrase ;
typedef TYPE_4__ Fts3Expr ;
typedef TYPE_5__ Fts3Cursor ;






 int SQLITE_OK ;
 int assert (int) ;
 int fts3EvalDeferredPhrase (TYPE_5__*,TYPE_3__*) ;
 int fts3EvalInvalidatePoslist (TYPE_3__*) ;
 int fts3EvalNearTest (TYPE_4__*,int*) ;

__attribute__((used)) static int fts3EvalTestExpr(
  Fts3Cursor *pCsr,
  Fts3Expr *pExpr,
  int *pRc
){
  int bHit = 1;
  if( *pRc==SQLITE_OK ){
    switch( pExpr->eType ){
      case 130:
      case 131:
        bHit = (
            fts3EvalTestExpr(pCsr, pExpr->pLeft, pRc)
         && fts3EvalTestExpr(pCsr, pExpr->pRight, pRc)
         && fts3EvalNearTest(pExpr, pRc)
        );
        if( bHit==0
         && pExpr->eType==130
         && (pExpr->pParent==0 || pExpr->pParent->eType!=130)
        ){
          Fts3Expr *p;
          for(p=pExpr; p->pPhrase==0; p=p->pLeft){
            if( p->pRight->iDocid==pCsr->iPrevId ){
              fts3EvalInvalidatePoslist(p->pRight->pPhrase);
            }
          }
          if( p->iDocid==pCsr->iPrevId ){
            fts3EvalInvalidatePoslist(p->pPhrase);
          }
        }

        break;

      case 128: {
        int bHit1 = fts3EvalTestExpr(pCsr, pExpr->pLeft, pRc);
        int bHit2 = fts3EvalTestExpr(pCsr, pExpr->pRight, pRc);
        bHit = bHit1 || bHit2;
        break;
      }

      case 129:
        bHit = (
            fts3EvalTestExpr(pCsr, pExpr->pLeft, pRc)
         && !fts3EvalTestExpr(pCsr, pExpr->pRight, pRc)
        );
        break;

      default: {

        if( pCsr->pDeferred
         && (pExpr->iDocid==pCsr->iPrevId || pExpr->bDeferred)
        ){
          Fts3Phrase *pPhrase = pExpr->pPhrase;
          assert( pExpr->bDeferred || pPhrase->doclist.bFreeList==0 );
          if( pExpr->bDeferred ){
            fts3EvalInvalidatePoslist(pPhrase);
          }
          *pRc = fts3EvalDeferredPhrase(pCsr, pPhrase);
          bHit = (pPhrase->doclist.pList!=0);
          pExpr->iDocid = pCsr->iPrevId;
        }else

        {
          bHit = (pExpr->bEof==0 && pExpr->iDocid==pCsr->iPrevId);
        }
        break;
      }
    }
  }
  return bHit;
}
