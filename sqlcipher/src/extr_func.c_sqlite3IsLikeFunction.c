
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_17__ {int matchSet; int matchOne; int matchAll; } ;
struct TYPE_14__ {char* zToken; } ;
struct TYPE_13__ {TYPE_2__* pList; } ;
struct TYPE_16__ {scalar_t__ op; TYPE_4__ u; TYPE_3__ x; } ;
struct TYPE_15__ {int funcFlags; int pUserData; } ;
struct TYPE_12__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_11__ {TYPE_6__* pExpr; } ;
typedef TYPE_5__ FuncDef ;
typedef TYPE_6__ Expr ;


 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_6__*,int ) ;
 scalar_t__ NEVER (int) ;
 int SQLITE_FUNC_CASE ;
 int SQLITE_FUNC_LIKE ;
 int SQLITE_UTF8 ;
 scalar_t__ TK_FUNCTION ;
 scalar_t__ TK_STRING ;
 int assert (int) ;
 TYPE_9__ likeInfoAlt ;
 int memcpy (char*,int ,int) ;
 TYPE_5__* sqlite3FindFunction (int *,char*,int,int ,int ) ;

int sqlite3IsLikeFunction(sqlite3 *db, Expr *pExpr, int *pIsNocase, char *aWc){
  FuncDef *pDef;
  int nExpr;
  if( pExpr->op!=TK_FUNCTION || !pExpr->x.pList ){
    return 0;
  }
  assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
  nExpr = pExpr->x.pList->nExpr;
  pDef = sqlite3FindFunction(db, pExpr->u.zToken, nExpr, SQLITE_UTF8, 0);
  if( NEVER(pDef==0) || (pDef->funcFlags & SQLITE_FUNC_LIKE)==0 ){
    return 0;
  }
  if( nExpr<3 ){
    aWc[3] = 0;
  }else{
    Expr *pEscape = pExpr->x.pList->a[2].pExpr;
    char *zEscape;
    if( pEscape->op!=TK_STRING ) return 0;
    zEscape = pEscape->u.zToken;
    if( zEscape[0]==0 || zEscape[1]!=0 ) return 0;
    aWc[3] = zEscape[0];
  }





  memcpy(aWc, pDef->pUserData, 3);
  assert( (char*)&likeInfoAlt == (char*)&likeInfoAlt.matchAll );
  assert( &((char*)&likeInfoAlt)[1] == (char*)&likeInfoAlt.matchOne );
  assert( &((char*)&likeInfoAlt)[2] == (char*)&likeInfoAlt.matchSet );
  *pIsNocase = (pDef->funcFlags & SQLITE_FUNC_CASE)==0;
  return 1;
}
