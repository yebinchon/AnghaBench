
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct WindowRewrite {TYPE_5__* pWin; TYPE_9__* pSub; TYPE_3__* pSrc; scalar_t__ pSubSelect; } ;
struct TYPE_26__ {scalar_t__ iEphCsr; TYPE_8__* pOwner; struct TYPE_26__* pNextWin; } ;
typedef TYPE_5__ Window ;
struct TYPE_22__ {struct WindowRewrite* pRewrite; } ;
struct TYPE_27__ {TYPE_7__* pParse; TYPE_1__ u; } ;
typedef TYPE_6__ Walker ;
struct TYPE_30__ {int nExpr; } ;
struct TYPE_25__ {TYPE_5__* pWin; } ;
struct TYPE_29__ {int op; scalar_t__ iTable; int iColumn; TYPE_4__ y; } ;
struct TYPE_28__ {int db; } ;
struct TYPE_24__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_23__ {scalar_t__ iCursor; } ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ Expr ;


 int EP_Static ;
 int EP_WinFunc ;
 int ExprClearProperty (TYPE_8__*,int ) ;
 int ExprHasProperty (TYPE_8__*,int ) ;
 int ExprSetProperty (TYPE_8__*,int ) ;



 int WRC_Continue ;
 int WRC_Prune ;
 int assert (int) ;
 int memset (TYPE_8__*,int ,int) ;
 int sqlite3ExprDelete (int ,TYPE_8__*) ;
 TYPE_8__* sqlite3ExprDup (int ,TYPE_8__*,int ) ;
 TYPE_9__* sqlite3ExprListAppend (TYPE_7__*,TYPE_9__*,TYPE_8__*) ;

__attribute__((used)) static int selectWindowRewriteExprCb(Walker *pWalker, Expr *pExpr){
  struct WindowRewrite *p = pWalker->u.pRewrite;
  Parse *pParse = pWalker->pParse;






  if( p->pSubSelect ){
    if( pExpr->op!=129 ){
      return WRC_Continue;
    }else{
      int nSrc = p->pSrc->nSrc;
      int i;
      for(i=0; i<nSrc; i++){
        if( pExpr->iTable==p->pSrc->a[i].iCursor ) break;
      }
      if( i==nSrc ) return WRC_Continue;
    }
  }

  switch( pExpr->op ){

    case 128:
      if( !ExprHasProperty(pExpr, EP_WinFunc) ){
        break;
      }else{
        Window *pWin;
        for(pWin=p->pWin; pWin; pWin=pWin->pNextWin){
          if( pExpr->y.pWin==pWin ){
            assert( pWin->pOwner==pExpr );
            return WRC_Prune;
          }
        }
      }


    case 130:
    case 129: {
      Expr *pDup = sqlite3ExprDup(pParse->db, pExpr, 0);
      p->pSub = sqlite3ExprListAppend(pParse, p->pSub, pDup);
      if( p->pSub ){
        assert( ExprHasProperty(pExpr, EP_Static)==0 );
        ExprSetProperty(pExpr, EP_Static);
        sqlite3ExprDelete(pParse->db, pExpr);
        ExprClearProperty(pExpr, EP_Static);
        memset(pExpr, 0, sizeof(Expr));

        pExpr->op = 129;
        pExpr->iColumn = p->pSub->nExpr-1;
        pExpr->iTable = p->pWin->iEphCsr;
      }

      break;
    }

    default:
      break;
  }

  return WRC_Continue;
}
