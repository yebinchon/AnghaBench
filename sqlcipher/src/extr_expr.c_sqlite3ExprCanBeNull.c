
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {TYPE_2__* pTab; } ;
struct TYPE_10__ {scalar_t__ op; int op2; size_t iColumn; TYPE_3__ y; struct TYPE_10__* pLeft; } ;
struct TYPE_8__ {TYPE_1__* aCol; } ;
struct TYPE_7__ {int notNull; } ;
typedef TYPE_4__ Expr ;


 int EP_CanBeNull ;
 int ExprHasProperty (TYPE_4__ const*,int ) ;




 int TK_REGISTER ;

 scalar_t__ TK_UMINUS ;
 scalar_t__ TK_UPLUS ;

int sqlite3ExprCanBeNull(const Expr *p){
  u8 op;
  while( p->op==TK_UPLUS || p->op==TK_UMINUS ){
    p = p->pLeft;
  }
  op = p->op;
  if( op==TK_REGISTER ) op = p->op2;
  switch( op ){
    case 129:
    case 128:
    case 130:
    case 132:
      return 0;
    case 131:
      return ExprHasProperty(p, EP_CanBeNull) ||
             p->y.pTab==0 ||
             (p->iColumn>=0 && p->y.pTab->aCol[p->iColumn].notNull==0);
    default:
      return 1;
  }
}
