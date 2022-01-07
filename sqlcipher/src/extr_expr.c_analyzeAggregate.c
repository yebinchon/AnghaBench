
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int u8 ;
struct SrcList_item {int iCursor; } ;
struct ExprList_item {TYPE_12__* pExpr; } ;
struct AggInfo_func {int iDistinct; int pFunc; int iMem; TYPE_12__* pExpr; } ;
struct AggInfo_col {int iSorterColumn; TYPE_12__* pExpr; int iMem; int iColumn; int iTable; int pTab; } ;
typedef void* i16 ;
struct TYPE_26__ {TYPE_10__* pNC; } ;
struct TYPE_32__ {int walkerDepth; TYPE_1__ u; } ;
typedef TYPE_7__ Walker ;
struct TYPE_34__ {int nTab; int db; int nMem; } ;
struct TYPE_33__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_31__ {TYPE_5__* pList; } ;
struct TYPE_30__ {int nExpr; } ;
struct TYPE_29__ {int zToken; } ;
struct TYPE_28__ {int pTab; } ;
struct TYPE_27__ {TYPE_13__* pAggInfo; } ;
struct TYPE_25__ {int nColumn; int nFunc; struct AggInfo_func* aFunc; int nSortingColumn; TYPE_11__* pGroupBy; struct AggInfo_col* aCol; } ;
struct TYPE_24__ {int op; int flags; TYPE_13__* pAggInfo; void* iAgg; TYPE_6__ x; TYPE_4__ u; int op2; int iColumn; int iTable; TYPE_3__ y; } ;
struct TYPE_23__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_22__ {int ncFlags; TYPE_2__ uNC; TYPE_8__* pSrcList; TYPE_9__* pParse; } ;
typedef TYPE_8__ SrcList ;
typedef TYPE_9__ Parse ;
typedef TYPE_10__ NameContext ;
typedef TYPE_11__ ExprList ;
typedef TYPE_12__ Expr ;
typedef TYPE_13__ AggInfo ;


 int ALWAYS (int) ;
 int ENC (int ) ;
 int EP_Distinct ;
 int EP_IntValue ;
 int EP_NoReduce ;
 int EP_Reduced ;
 int EP_TokenOnly ;
 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_12__*,int) ;
 int ExprSetVVAProperty (TYPE_12__*,int ) ;
 int NC_InAggFunc ;
 int NC_UAggInfo ;



 int WRC_Continue ;
 int WRC_Prune ;
 int addAggInfoColumn (int ,TYPE_13__*) ;
 int addAggInfoFunc (int ,TYPE_13__*) ;
 int assert (int) ;
 int sqlite3ExprCompare (int ,TYPE_12__*,TYPE_12__*,int) ;
 int sqlite3FindFunction (int ,int ,int ,int ,int ) ;
 int testcase (int) ;

__attribute__((used)) static int analyzeAggregate(Walker *pWalker, Expr *pExpr){
  int i;
  NameContext *pNC = pWalker->u.pNC;
  Parse *pParse = pNC->pParse;
  SrcList *pSrcList = pNC->pSrcList;
  AggInfo *pAggInfo = pNC->uNC.pAggInfo;

  assert( pNC->ncFlags & NC_UAggInfo );
  switch( pExpr->op ){
    case 130:
    case 128: {
      testcase( pExpr->op==130 );
      testcase( pExpr->op==128 );


      if( ALWAYS(pSrcList!=0) ){
        struct SrcList_item *pItem = pSrcList->a;
        for(i=0; i<pSrcList->nSrc; i++, pItem++){
          struct AggInfo_col *pCol;
          assert( !ExprHasProperty(pExpr, EP_TokenOnly|EP_Reduced) );
          if( pExpr->iTable==pItem->iCursor ){






            int k;
            pCol = pAggInfo->aCol;
            for(k=0; k<pAggInfo->nColumn; k++, pCol++){
              if( pCol->iTable==pExpr->iTable &&
                  pCol->iColumn==pExpr->iColumn ){
                break;
              }
            }
            if( (k>=pAggInfo->nColumn)
             && (k = addAggInfoColumn(pParse->db, pAggInfo))>=0
            ){
              pCol = &pAggInfo->aCol[k];
              pCol->pTab = pExpr->y.pTab;
              pCol->iTable = pExpr->iTable;
              pCol->iColumn = pExpr->iColumn;
              pCol->iMem = ++pParse->nMem;
              pCol->iSorterColumn = -1;
              pCol->pExpr = pExpr;
              if( pAggInfo->pGroupBy ){
                int j, n;
                ExprList *pGB = pAggInfo->pGroupBy;
                struct ExprList_item *pTerm = pGB->a;
                n = pGB->nExpr;
                for(j=0; j<n; j++, pTerm++){
                  Expr *pE = pTerm->pExpr;
                  if( pE->op==128 && pE->iTable==pExpr->iTable &&
                      pE->iColumn==pExpr->iColumn ){
                    pCol->iSorterColumn = j;
                    break;
                  }
                }
              }
              if( pCol->iSorterColumn<0 ){
                pCol->iSorterColumn = pAggInfo->nSortingColumn++;
              }
            }





            ExprSetVVAProperty(pExpr, EP_NoReduce);
            pExpr->pAggInfo = pAggInfo;
            pExpr->op = 130;
            pExpr->iAgg = (i16)k;
            break;
          }
        }
      }
      return WRC_Prune;
    }
    case 129: {
      if( (pNC->ncFlags & NC_InAggFunc)==0
       && pWalker->walkerDepth==pExpr->op2
      ){



        struct AggInfo_func *pItem = pAggInfo->aFunc;
        for(i=0; i<pAggInfo->nFunc; i++, pItem++){
          if( sqlite3ExprCompare(0, pItem->pExpr, pExpr, -1)==0 ){
            break;
          }
        }
        if( i>=pAggInfo->nFunc ){


          u8 enc = ENC(pParse->db);
          i = addAggInfoFunc(pParse->db, pAggInfo);
          if( i>=0 ){
            assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
            pItem = &pAggInfo->aFunc[i];
            pItem->pExpr = pExpr;
            pItem->iMem = ++pParse->nMem;
            assert( !ExprHasProperty(pExpr, EP_IntValue) );
            pItem->pFunc = sqlite3FindFunction(pParse->db,
                   pExpr->u.zToken,
                   pExpr->x.pList ? pExpr->x.pList->nExpr : 0, enc, 0);
            if( pExpr->flags & EP_Distinct ){
              pItem->iDistinct = pParse->nTab++;
            }else{
              pItem->iDistinct = -1;
            }
          }
        }


        assert( !ExprHasProperty(pExpr, EP_TokenOnly|EP_Reduced) );
        ExprSetVVAProperty(pExpr, EP_NoReduce);
        pExpr->iAgg = (i16)i;
        pExpr->pAggInfo = pAggInfo;
        return WRC_Prune;
      }else{
        return WRC_Continue;
      }
    }
  }
  return WRC_Continue;
}
