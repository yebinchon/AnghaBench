
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_2__* pList; } ;
struct TYPE_18__ {scalar_t__ op; TYPE_3__ x; } ;
struct TYPE_17__ {int nMem; } ;
struct TYPE_15__ {TYPE_1__* a; } ;
struct TYPE_14__ {int pExpr; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Expr ;


 scalar_t__ TK_SELECT ;
 int sqlite3CodeSubselect (TYPE_4__*,TYPE_5__*) ;
 int sqlite3ExprCodeFactorable (TYPE_4__*,int ,int) ;
 int sqlite3ExprCodeTemp (TYPE_4__*,TYPE_5__*,int*) ;
 int sqlite3ExprVectorSize (TYPE_5__*) ;

__attribute__((used)) static int exprCodeVector(Parse *pParse, Expr *p, int *piFreeable){
  int iResult;
  int nResult = sqlite3ExprVectorSize(p);
  if( nResult==1 ){
    iResult = sqlite3ExprCodeTemp(pParse, p, piFreeable);
  }else{
    *piFreeable = 0;
    if( p->op==TK_SELECT ){



      iResult = sqlite3CodeSubselect(pParse, p);

    }else{
      int i;
      iResult = pParse->nMem+1;
      pParse->nMem += nResult;
      for(i=0; i<nResult; i++){
        sqlite3ExprCodeFactorable(pParse, p->x.pList->a[i].pExpr, i+iResult);
      }
    }
  }
  return iResult;
}
