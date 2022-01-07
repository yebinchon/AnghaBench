
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int sqlite3 ;
struct TYPE_7__ {scalar_t__ op; int pRight; } ;
struct TYPE_6__ {int * db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 int IN_RENAME_OBJECT ;
 scalar_t__ TK_NULL ;
 int sqlite3ExprDelete (int *,int ) ;

__attribute__((used)) static void binaryToUnaryIfNull(Parse *pParse, Expr *pY, Expr *pA, int op){
    sqlite3 *db = pParse->db;
    if( pA && pY && pY->op==TK_NULL && !IN_RENAME_OBJECT ){
      pA->op = (u8)op;
      sqlite3ExprDelete(db, pA->pRight);
      pA->pRight = 0;
    }
  }
