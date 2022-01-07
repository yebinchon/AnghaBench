
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int sqlite3 ;
struct TYPE_10__ {int n; int z; } ;
typedef TYPE_2__ Token ;
struct TYPE_9__ {int iValue; char* zToken; } ;
struct TYPE_11__ {int iAgg; int flags; int nHeight; TYPE_1__ u; scalar_t__ op; } ;
typedef TYPE_3__ Expr ;


 int EP_IntValue ;
 int EP_Leaf ;
 int TK_INTEGER ;
 int assert (int) ;
 int memcpy (char*,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_3__* sqlite3DbMallocRawNN (int *,int) ;
 int sqlite3DequoteExpr (TYPE_3__*) ;
 scalar_t__ sqlite3GetInt32 (int ,int*) ;
 scalar_t__ sqlite3Isquote (char) ;

Expr *sqlite3ExprAlloc(
  sqlite3 *db,
  int op,
  const Token *pToken,
  int dequote
){
  Expr *pNew;
  int nExtra = 0;
  int iValue = 0;

  assert( db!=0 );
  if( pToken ){
    if( op!=TK_INTEGER || pToken->z==0
          || sqlite3GetInt32(pToken->z, &iValue)==0 ){
      nExtra = pToken->n+1;
      assert( iValue>=0 );
    }
  }
  pNew = sqlite3DbMallocRawNN(db, sizeof(Expr)+nExtra);
  if( pNew ){
    memset(pNew, 0, sizeof(Expr));
    pNew->op = (u8)op;
    pNew->iAgg = -1;
    if( pToken ){
      if( nExtra==0 ){
        pNew->flags |= EP_IntValue|EP_Leaf;
        pNew->u.iValue = iValue;
      }else{
        pNew->u.zToken = (char*)&pNew[1];
        assert( pToken->z!=0 || pToken->n==0 );
        if( pToken->n ) memcpy(pNew->u.zToken, pToken->z, pToken->n);
        pNew->u.zToken[pToken->n] = 0;
        if( dequote && sqlite3Isquote(pNew->u.zToken[0]) ){
          sqlite3DequoteExpr(pNew);
        }
      }
    }



  }
  return pNew;
}
