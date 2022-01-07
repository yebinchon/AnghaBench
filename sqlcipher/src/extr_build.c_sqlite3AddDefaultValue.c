
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int x ;
struct TYPE_22__ {int busy; } ;
struct TYPE_24__ {TYPE_1__ init; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_25__ {int nCol; TYPE_7__* aCol; } ;
typedef TYPE_4__ Table ;
struct TYPE_28__ {TYPE_6__* pDflt; int zName; } ;
struct TYPE_23__ {int zToken; } ;
struct TYPE_27__ {TYPE_2__ u; int flags; struct TYPE_27__* pLeft; int op; } ;
struct TYPE_26__ {TYPE_4__* pNewTable; TYPE_3__* db; } ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ Expr ;
typedef TYPE_7__ Column ;


 int EP_Skip ;
 int EXPRDUP_REDUCE ;
 scalar_t__ IN_RENAME_OBJECT ;
 int TK_SPAN ;
 int memset (TYPE_6__*,int ,int) ;
 int sqlite3DbFree (TYPE_3__*,int ) ;
 int sqlite3DbSpanDup (TYPE_3__*,char const*,char const*) ;
 int sqlite3ErrorMsg (TYPE_5__*,char*,int ) ;
 int sqlite3ExprDelete (TYPE_3__*,TYPE_6__*) ;
 TYPE_6__* sqlite3ExprDup (TYPE_3__*,TYPE_6__*,int ) ;
 int sqlite3ExprIsConstantOrFunction (TYPE_6__*,int ) ;
 int sqlite3RenameExprUnmap (TYPE_5__*,TYPE_6__*) ;

void sqlite3AddDefaultValue(
  Parse *pParse,
  Expr *pExpr,
  const char *zStart,
  const char *zEnd
){
  Table *p;
  Column *pCol;
  sqlite3 *db = pParse->db;
  p = pParse->pNewTable;
  if( p!=0 ){
    pCol = &(p->aCol[p->nCol-1]);
    if( !sqlite3ExprIsConstantOrFunction(pExpr, db->init.busy) ){
      sqlite3ErrorMsg(pParse, "default value of column [%s] is not constant",
          pCol->zName);
    }else{



      Expr x;
      sqlite3ExprDelete(db, pCol->pDflt);
      memset(&x, 0, sizeof(x));
      x.op = TK_SPAN;
      x.u.zToken = sqlite3DbSpanDup(db, zStart, zEnd);
      x.pLeft = pExpr;
      x.flags = EP_Skip;
      pCol->pDflt = sqlite3ExprDup(db, &x, EXPRDUP_REDUCE);
      sqlite3DbFree(db, x.u.zToken);
    }
  }
  if( IN_RENAME_OBJECT ){
    sqlite3RenameExprUnmap(pParse, pExpr);
  }
  sqlite3ExprDelete(db, pExpr);
}
