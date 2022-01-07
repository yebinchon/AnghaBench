
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct WindowUpdate TYPE_16__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef int sqlite3 ;
struct TYPE_18__ {scalar_t__ eFrmType; int eStart; int eEnd; TYPE_3__* pFunc; void* pStart; scalar_t__ eExclude; void* pEnd; scalar_t__ pFilter; TYPE_14__* pOrderBy; TYPE_14__* pPartition; scalar_t__ zName; } ;
typedef TYPE_1__ Window ;
struct TYPE_20__ {int funcFlags; char const* zName; } ;
struct TYPE_19__ {int * db; } ;
struct WindowUpdate {char const* zFunc; int eFrmType; int eStart; int eEnd; } ;
struct TYPE_17__ {int nExpr; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ FuncDef ;


 int ArraySize (TYPE_16__*) ;
 int SQLITE_FUNC_WINDOW ;
 int TK_CURRENT ;
 int TK_FOLLOWING ;
 scalar_t__ TK_GROUPS ;
 int TK_INTEGER ;
 scalar_t__ TK_RANGE ;
 scalar_t__ TK_ROWS ;
 int TK_UNBOUNDED ;
 int cume_distName ;
 int dense_rankName ;
 int lagName ;
 int leadName ;
 int ntileName ;
 int percent_rankName ;
 int rankName ;
 int row_numberName ;
 int sqlite3ErrorMsg (TYPE_2__*,char*) ;
 void* sqlite3Expr (int *,int ,char*) ;
 int sqlite3ExprDelete (int *,void*) ;
 void* sqlite3ExprDup (int *,void*,int ) ;
 void* sqlite3ExprListDup (int *,TYPE_14__*,int ) ;
 int sqlite3WindowChain (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* windowFind (TYPE_2__*,TYPE_1__*,scalar_t__) ;

void sqlite3WindowUpdate(
  Parse *pParse,
  Window *pList,
  Window *pWin,
  FuncDef *pFunc
){
  if( pWin->zName && pWin->eFrmType==0 ){
    Window *p = windowFind(pParse, pList, pWin->zName);
    if( p==0 ) return;
    pWin->pPartition = sqlite3ExprListDup(pParse->db, p->pPartition, 0);
    pWin->pOrderBy = sqlite3ExprListDup(pParse->db, p->pOrderBy, 0);
    pWin->pStart = sqlite3ExprDup(pParse->db, p->pStart, 0);
    pWin->pEnd = sqlite3ExprDup(pParse->db, p->pEnd, 0);
    pWin->eStart = p->eStart;
    pWin->eEnd = p->eEnd;
    pWin->eFrmType = p->eFrmType;
    pWin->eExclude = p->eExclude;
  }else{
    sqlite3WindowChain(pParse, pWin, pList);
  }
  if( (pWin->eFrmType==TK_RANGE)
   && (pWin->pStart || pWin->pEnd)
   && (pWin->pOrderBy==0 || pWin->pOrderBy->nExpr!=1)
  ){
    sqlite3ErrorMsg(pParse,
      "RANGE with offset PRECEDING/FOLLOWING requires one ORDER BY expression"
    );
  }else
  if( pFunc->funcFlags & SQLITE_FUNC_WINDOW ){
    sqlite3 *db = pParse->db;
    if( pWin->pFilter ){
      sqlite3ErrorMsg(pParse,
          "FILTER clause may only be used with aggregate window functions"
      );
    }else{
      struct WindowUpdate {
        const char *zFunc;
        int eFrmType;
        int eStart;
        int eEnd;
      } aUp[] = {
        { row_numberName, TK_ROWS, TK_UNBOUNDED, TK_CURRENT },
        { dense_rankName, TK_RANGE, TK_UNBOUNDED, TK_CURRENT },
        { rankName, TK_RANGE, TK_UNBOUNDED, TK_CURRENT },
        { percent_rankName, TK_GROUPS, TK_CURRENT, TK_UNBOUNDED },
        { cume_distName, TK_GROUPS, TK_FOLLOWING, TK_UNBOUNDED },
        { ntileName, TK_ROWS, TK_CURRENT, TK_UNBOUNDED },
        { leadName, TK_ROWS, TK_UNBOUNDED, TK_UNBOUNDED },
        { lagName, TK_ROWS, TK_UNBOUNDED, TK_CURRENT },
      };
      int i;
      for(i=0; i<ArraySize(aUp); i++){
        if( pFunc->zName==aUp[i].zFunc ){
          sqlite3ExprDelete(db, pWin->pStart);
          sqlite3ExprDelete(db, pWin->pEnd);
          pWin->pEnd = pWin->pStart = 0;
          pWin->eFrmType = aUp[i].eFrmType;
          pWin->eStart = aUp[i].eStart;
          pWin->eEnd = aUp[i].eEnd;
          pWin->eExclude = 0;
          if( pWin->eStart==TK_FOLLOWING ){
            pWin->pStart = sqlite3Expr(db, TK_INTEGER, "1");
          }
          break;
        }
      }
    }
  }
  pWin->pFunc = pFunc;
}
