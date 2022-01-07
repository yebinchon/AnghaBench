
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_7__ {int eFrmType; int eStart; int eEnd; int bImplicitFrame; void* pStart; void* pEnd; scalar_t__ eExclude; } ;
typedef TYPE_1__ Window ;
struct TYPE_8__ {int db; } ;
typedef TYPE_2__ Parse ;
typedef int Expr ;


 scalar_t__ OptimizationDisabled (int ,int ) ;
 int SQLITE_WindowFunc ;
 int TK_CURRENT ;
 int TK_FOLLOWING ;
 int TK_GROUPS ;
 scalar_t__ TK_NO ;
 int TK_PRECEDING ;
 int TK_RANGE ;
 int TK_ROWS ;
 int TK_UNBOUNDED ;
 int assert (int) ;
 scalar_t__ sqlite3DbMallocZero (int ,int) ;
 int sqlite3ErrorMsg (TYPE_2__*,char*) ;
 int sqlite3ExprDelete (int ,int *) ;
 void* sqlite3WindowOffsetExpr (TYPE_2__*,int *) ;

Window *sqlite3WindowAlloc(
  Parse *pParse,
  int eType,
  int eStart,
  Expr *pStart,
  int eEnd,
  Expr *pEnd,
  u8 eExclude
){
  Window *pWin = 0;
  int bImplicitFrame = 0;


  assert( eType==0 || eType==TK_RANGE || eType==TK_ROWS || eType==TK_GROUPS );
  assert( eStart==TK_CURRENT || eStart==TK_PRECEDING
           || eStart==TK_UNBOUNDED || eStart==TK_FOLLOWING );
  assert( eEnd==TK_CURRENT || eEnd==TK_FOLLOWING
           || eEnd==TK_UNBOUNDED || eEnd==TK_PRECEDING );
  assert( (eStart==TK_PRECEDING || eStart==TK_FOLLOWING)==(pStart!=0) );
  assert( (eEnd==TK_FOLLOWING || eEnd==TK_PRECEDING)==(pEnd!=0) );

  if( eType==0 ){
    bImplicitFrame = 1;
    eType = TK_RANGE;
  }
  if( (eStart==TK_CURRENT && eEnd==TK_PRECEDING)
   || (eStart==TK_FOLLOWING && (eEnd==TK_PRECEDING || eEnd==TK_CURRENT))
  ){
    sqlite3ErrorMsg(pParse, "unsupported frame specification");
    goto windowAllocErr;
  }

  pWin = (Window*)sqlite3DbMallocZero(pParse->db, sizeof(Window));
  if( pWin==0 ) goto windowAllocErr;
  pWin->eFrmType = eType;
  pWin->eStart = eStart;
  pWin->eEnd = eEnd;
  if( eExclude==0 && OptimizationDisabled(pParse->db, SQLITE_WindowFunc) ){
    eExclude = TK_NO;
  }
  pWin->eExclude = eExclude;
  pWin->bImplicitFrame = bImplicitFrame;
  pWin->pEnd = sqlite3WindowOffsetExpr(pParse, pEnd);
  pWin->pStart = sqlite3WindowOffsetExpr(pParse, pStart);
  return pWin;

windowAllocErr:
  sqlite3ExprDelete(pParse->db, pEnd);
  sqlite3ExprDelete(pParse->db, pStart);
  return 0;
}
