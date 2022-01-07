
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* pOwner; } ;
typedef TYPE_2__ Window ;
struct TYPE_12__ {TYPE_2__* pWin; } ;
struct TYPE_15__ {scalar_t__ op; int flags; TYPE_1__ y; } ;
struct TYPE_14__ {int db; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Expr ;


 scalar_t__ ALWAYS (TYPE_2__*) ;
 int EP_Distinct ;
 int EP_WinFunc ;
 int ExprSetProperty (TYPE_4__*,int ) ;
 scalar_t__ TK_FUNCTION ;
 int assert (int) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*) ;
 int sqlite3WindowDelete (int ,TYPE_2__*) ;

void sqlite3WindowAttach(Parse *pParse, Expr *p, Window *pWin){
  if( p ){
    assert( p->op==TK_FUNCTION );



    if( ALWAYS(pWin) ){
      p->y.pWin = pWin;
      ExprSetProperty(p, EP_WinFunc);
      pWin->pOwner = p;
      if( p->flags & EP_Distinct ){
        sqlite3ErrorMsg(pParse,
           "DISTINCT is not supported for window functions");
      }
    }
  }else{
    sqlite3WindowDelete(pParse->db, pWin);
  }
}
