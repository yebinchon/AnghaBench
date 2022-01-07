
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_21__ {TYPE_6__* pList; } ;
struct TYPE_18__ {int zToken; } ;
struct TYPE_17__ {TYPE_2__* pTab; } ;
struct TYPE_23__ {int op; int flags; int op2; int iColumn; TYPE_7__ x; struct TYPE_23__* pRight; struct TYPE_23__* pLeft; TYPE_4__ u; TYPE_3__ y; } ;
struct TYPE_22__ {int * db; } ;
struct TYPE_20__ {int nExpr; TYPE_5__* a; } ;
struct TYPE_19__ {TYPE_9__* pExpr; } ;
struct TYPE_16__ {TYPE_1__* aCol; } ;
struct TYPE_15__ {char* zColl; } ;
typedef TYPE_8__ Parse ;
typedef TYPE_9__ Expr ;
typedef int CollSeq ;


 scalar_t__ ALWAYS (int) ;
 int ENC (int *) ;
 int EP_Collate ;
 int EP_Generic ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_9__*,int) ;
 int TK_AGG_COLUMN ;
 int TK_CAST ;
 int TK_COLLATE ;
 int TK_COLUMN ;
 int TK_REGISTER ;
 int TK_TRIGGER ;
 int TK_UPLUS ;
 int assert (int) ;
 scalar_t__ sqlite3CheckCollSeq (TYPE_8__*,int *) ;
 int * sqlite3FindCollSeq (int *,int ,char const*,int ) ;
 int * sqlite3GetCollSeq (TYPE_8__*,int ,int ,int ) ;

CollSeq *sqlite3ExprCollSeq(Parse *pParse, Expr *pExpr){
  sqlite3 *db = pParse->db;
  CollSeq *pColl = 0;
  Expr *p = pExpr;
  while( p ){
    int op = p->op;
    if( p->flags & EP_Generic ) break;
    if( op==TK_REGISTER ) op = p->op2;
    if( (op==TK_AGG_COLUMN || op==TK_COLUMN || op==TK_TRIGGER)
     && p->y.pTab!=0
    ){


      int j = p->iColumn;
      if( j>=0 ){
        const char *zColl = p->y.pTab->aCol[j].zColl;
        pColl = sqlite3FindCollSeq(db, ENC(db), zColl, 0);
      }
      break;
    }
    if( op==TK_CAST || op==TK_UPLUS ){
      p = p->pLeft;
      continue;
    }
    if( op==TK_COLLATE ){
      pColl = sqlite3GetCollSeq(pParse, ENC(db), 0, p->u.zToken);
      break;
    }
    if( p->flags & EP_Collate ){
      if( p->pLeft && (p->pLeft->flags & EP_Collate)!=0 ){
        p = p->pLeft;
      }else{
        Expr *pNext = p->pRight;

        assert( p->x.pList==0 || p->pRight==0 );



        if( p->x.pList!=0 && ALWAYS(!ExprHasProperty(p, EP_xIsSelect)) ){
          int i;
          for(i=0; ALWAYS(i<p->x.pList->nExpr); i++){
            if( ExprHasProperty(p->x.pList->a[i].pExpr, EP_Collate) ){
              pNext = p->x.pList->a[i].pExpr;
              break;
            }
          }
        }
        p = pNext;
      }
    }else{
      break;
    }
  }
  if( sqlite3CheckCollSeq(pParse, pColl) ){
    pColl = 0;
  }
  return pColl;
}
