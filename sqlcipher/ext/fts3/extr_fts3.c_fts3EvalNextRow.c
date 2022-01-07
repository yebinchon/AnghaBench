
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_13__ {int bDesc; } ;
struct TYPE_12__ {int iDocid; int nList; int pList; int aAll; } ;
struct TYPE_11__ {scalar_t__ bEof; int bStart; int eType; int iDocid; TYPE_1__* pPhrase; struct TYPE_11__* pRight; struct TYPE_11__* pLeft; int bDeferred; } ;
struct TYPE_10__ {TYPE_3__ doclist; } ;
typedef TYPE_1__ Fts3Phrase ;
typedef TYPE_2__ Fts3Expr ;
typedef TYPE_3__ Fts3Doclist ;
typedef TYPE_4__ Fts3Cursor ;


 int DOCID_CMP (int ,int ) ;




 int const FTSQUERY_PHRASE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3EvalInvalidatePoslist (TYPE_1__*) ;
 int fts3EvalPhraseNext (TYPE_4__*,TYPE_1__*,int*) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void fts3EvalNextRow(
  Fts3Cursor *pCsr,
  Fts3Expr *pExpr,
  int *pRc
){
  if( *pRc==SQLITE_OK ){
    int bDescDoclist = pCsr->bDesc;
    assert( pExpr->bEof==0 );
    pExpr->bStart = 1;

    switch( pExpr->eType ){
      case 130:
      case 131: {
        Fts3Expr *pLeft = pExpr->pLeft;
        Fts3Expr *pRight = pExpr->pRight;
        assert( !pLeft->bDeferred || !pRight->bDeferred );

        if( pLeft->bDeferred ){


          fts3EvalNextRow(pCsr, pRight, pRc);
          pExpr->iDocid = pRight->iDocid;
          pExpr->bEof = pRight->bEof;
        }else if( pRight->bDeferred ){


          fts3EvalNextRow(pCsr, pLeft, pRc);
          pExpr->iDocid = pLeft->iDocid;
          pExpr->bEof = pLeft->bEof;
        }else{

          fts3EvalNextRow(pCsr, pLeft, pRc);
          fts3EvalNextRow(pCsr, pRight, pRc);
          while( !pLeft->bEof && !pRight->bEof && *pRc==SQLITE_OK ){
            sqlite3_int64 iDiff = DOCID_CMP(pLeft->iDocid, pRight->iDocid);
            if( iDiff==0 ) break;
            if( iDiff<0 ){
              fts3EvalNextRow(pCsr, pLeft, pRc);
            }else{
              fts3EvalNextRow(pCsr, pRight, pRc);
            }
          }
          pExpr->iDocid = pLeft->iDocid;
          pExpr->bEof = (pLeft->bEof || pRight->bEof);
          if( pExpr->eType==130 && pExpr->bEof ){
            assert( pRight->eType==FTSQUERY_PHRASE );
            if( pRight->pPhrase->doclist.aAll ){
              Fts3Doclist *pDl = &pRight->pPhrase->doclist;
              while( *pRc==SQLITE_OK && pRight->bEof==0 ){
                memset(pDl->pList, 0, pDl->nList);
                fts3EvalNextRow(pCsr, pRight, pRc);
              }
            }
            if( pLeft->pPhrase && pLeft->pPhrase->doclist.aAll ){
              Fts3Doclist *pDl = &pLeft->pPhrase->doclist;
              while( *pRc==SQLITE_OK && pLeft->bEof==0 ){
                memset(pDl->pList, 0, pDl->nList);
                fts3EvalNextRow(pCsr, pLeft, pRc);
              }
            }
          }
        }
        break;
      }

      case 128: {
        Fts3Expr *pLeft = pExpr->pLeft;
        Fts3Expr *pRight = pExpr->pRight;
        sqlite3_int64 iCmp = DOCID_CMP(pLeft->iDocid, pRight->iDocid);

        assert( pLeft->bStart || pLeft->iDocid==pRight->iDocid );
        assert( pRight->bStart || pLeft->iDocid==pRight->iDocid );

        if( pRight->bEof || (pLeft->bEof==0 && iCmp<0) ){
          fts3EvalNextRow(pCsr, pLeft, pRc);
        }else if( pLeft->bEof || iCmp>0 ){
          fts3EvalNextRow(pCsr, pRight, pRc);
        }else{
          fts3EvalNextRow(pCsr, pLeft, pRc);
          fts3EvalNextRow(pCsr, pRight, pRc);
        }

        pExpr->bEof = (pLeft->bEof && pRight->bEof);
        iCmp = DOCID_CMP(pLeft->iDocid, pRight->iDocid);
        if( pRight->bEof || (pLeft->bEof==0 && iCmp<0) ){
          pExpr->iDocid = pLeft->iDocid;
        }else{
          pExpr->iDocid = pRight->iDocid;
        }

        break;
      }

      case 129: {
        Fts3Expr *pLeft = pExpr->pLeft;
        Fts3Expr *pRight = pExpr->pRight;

        if( pRight->bStart==0 ){
          fts3EvalNextRow(pCsr, pRight, pRc);
          assert( *pRc!=SQLITE_OK || pRight->bStart );
        }

        fts3EvalNextRow(pCsr, pLeft, pRc);
        if( pLeft->bEof==0 ){
          while( !*pRc
              && !pRight->bEof
              && DOCID_CMP(pLeft->iDocid, pRight->iDocid)>0
          ){
            fts3EvalNextRow(pCsr, pRight, pRc);
          }
        }
        pExpr->iDocid = pLeft->iDocid;
        pExpr->bEof = pLeft->bEof;
        break;
      }

      default: {
        Fts3Phrase *pPhrase = pExpr->pPhrase;
        fts3EvalInvalidatePoslist(pPhrase);
        *pRc = fts3EvalPhraseNext(pCsr, pPhrase, &pExpr->bEof);
        pExpr->iDocid = pPhrase->doclist.iDocid;
        break;
      }
    }
  }
}
