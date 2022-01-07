
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ op; int op2; int iColumn; int iTable; struct TYPE_3__* pLeft; } ;
typedef TYPE_1__ Expr ;


 char SQLITE_AFF_BLOB ;
 char SQLITE_AFF_INTEGER ;
 char SQLITE_AFF_NUMERIC ;
 char SQLITE_AFF_REAL ;
 char SQLITE_AFF_TEXT ;




 int TK_REGISTER ;

 scalar_t__ TK_UMINUS ;
 scalar_t__ TK_UPLUS ;
 int assert (int) ;

int sqlite3ExprNeedsNoAffinityChange(const Expr *p, char aff){
  u8 op;
  if( aff==SQLITE_AFF_BLOB ) return 1;
  while( p->op==TK_UPLUS || p->op==TK_UMINUS ){ p = p->pLeft; }
  op = p->op;
  if( op==TK_REGISTER ) op = p->op2;
  switch( op ){
    case 129: {
      return aff==SQLITE_AFF_INTEGER || aff==SQLITE_AFF_NUMERIC;
    }
    case 130: {
      return aff==SQLITE_AFF_REAL || aff==SQLITE_AFF_NUMERIC;
    }
    case 128: {
      return aff==SQLITE_AFF_TEXT;
    }
    case 132: {
      return 1;
    }
    case 131: {
      assert( p->iTable>=0 );
      return p->iColumn<0
          && (aff==SQLITE_AFF_INTEGER || aff==SQLITE_AFF_NUMERIC);
    }
    default: {
      return 0;
    }
  }
}
