
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iValue; int zToken; } ;
struct TYPE_5__ {int op; int flags; struct TYPE_5__* pLeft; TYPE_1__ u; } ;
typedef TYPE_2__ Expr ;


 int EP_IntValue ;
 int TK_INTEGER ;


 int assert (int) ;
 scalar_t__ sqlite3GetInt32 (int ,int*) ;

int sqlite3ExprIsInteger(Expr *p, int *pValue){
  int rc = 0;
  if( p==0 ) return 0;



  assert( p->op!=TK_INTEGER || (p->flags & EP_IntValue)!=0
           || sqlite3GetInt32(p->u.zToken, &rc)==0 );

  if( p->flags & EP_IntValue ){
    *pValue = p->u.iValue;
    return 1;
  }
  switch( p->op ){
    case 128: {
      rc = sqlite3ExprIsInteger(p->pLeft, pValue);
      break;
    }
    case 129: {
      int v;
      if( sqlite3ExprIsInteger(p->pLeft, &v) ){
        assert( v!=(-2147483647-1) );
        *pValue = -v;
        rc = 1;
      }
      break;
    }
    default: break;
  }
  return rc;
}
