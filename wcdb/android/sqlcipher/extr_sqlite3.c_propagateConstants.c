
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int w ;
struct TYPE_12__ {int nChng; scalar_t__ apExpr; TYPE_5__* pParse; scalar_t__ nConst; } ;
typedef TYPE_2__ WhereConst ;
struct TYPE_11__ {TYPE_2__* pConst; } ;
struct TYPE_13__ {TYPE_1__ u; scalar_t__ walkerDepth; scalar_t__ xSelectCallback2; int xSelectCallback; int xExprCallback; TYPE_5__* pParse; } ;
typedef TYPE_3__ Walker ;
struct TYPE_15__ {int db; } ;
struct TYPE_14__ {int pWhere; } ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;


 int findConstInWhere (TYPE_2__*,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int propagateConstantExprRewrite ;
 int sqlite3DbFree (int ,scalar_t__) ;
 int sqlite3SelectWalkNoop ;
 int sqlite3WalkExpr (TYPE_3__*,int ) ;

__attribute__((used)) static int propagateConstants(
  Parse *pParse,
  Select *p
){
  WhereConst x;
  Walker w;
  int nChng = 0;
  x.pParse = pParse;
  do{
    x.nConst = 0;
    x.nChng = 0;
    x.apExpr = 0;
    findConstInWhere(&x, p->pWhere);
    if( x.nConst ){
      memset(&w, 0, sizeof(w));
      w.pParse = pParse;
      w.xExprCallback = propagateConstantExprRewrite;
      w.xSelectCallback = sqlite3SelectWalkNoop;
      w.xSelectCallback2 = 0;
      w.walkerDepth = 0;
      w.u.pConst = &x;
      sqlite3WalkExpr(&w, p->pWhere);
      sqlite3DbFree(x.pParse->db, x.apExpr);
      nChng += x.nChng;
    }
  }while( x.nChng );
  return nChng;
}
