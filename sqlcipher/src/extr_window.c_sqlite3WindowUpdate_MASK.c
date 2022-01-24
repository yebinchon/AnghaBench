#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct WindowUpdate   TYPE_16__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_18__ {scalar_t__ eFrmType; int eStart; int eEnd; TYPE_3__* pFunc; void* pStart; scalar_t__ eExclude; void* pEnd; scalar_t__ pFilter; TYPE_14__* pOrderBy; TYPE_14__* pPartition; scalar_t__ zName; } ;
typedef  TYPE_1__ Window ;
struct TYPE_20__ {int funcFlags; char const* zName; } ;
struct TYPE_19__ {int /*<<< orphan*/ * db; } ;
struct WindowUpdate {char const* zFunc; int eFrmType; int eStart; int eEnd; } ;
struct TYPE_17__ {int nExpr; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ FuncDef ;

/* Variables and functions */
 int FUNC0 (TYPE_16__*) ; 
 int SQLITE_FUNC_WINDOW ; 
 int TK_CURRENT ; 
 int TK_FOLLOWING ; 
 scalar_t__ TK_GROUPS ; 
 int /*<<< orphan*/  TK_INTEGER ; 
 scalar_t__ TK_RANGE ; 
 scalar_t__ TK_ROWS ; 
 int TK_UNBOUNDED ; 
 int /*<<< orphan*/  cume_distName ; 
 int /*<<< orphan*/  dense_rankName ; 
 int /*<<< orphan*/  lagName ; 
 int /*<<< orphan*/  leadName ; 
 int /*<<< orphan*/  ntileName ; 
 int /*<<< orphan*/  percent_rankName ; 
 int /*<<< orphan*/  rankName ; 
 int /*<<< orphan*/  row_numberName ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,TYPE_1__*,scalar_t__) ; 

void FUNC8(
  Parse *pParse, 
  Window *pList,                  /* List of named windows for this SELECT */
  Window *pWin,                   /* Window frame to update */
  FuncDef *pFunc                  /* Window function definition */
){
  if( pWin->zName && pWin->eFrmType==0 ){
    Window *p = FUNC7(pParse, pList, pWin->zName);
    if( p==0 ) return;
    pWin->pPartition = FUNC5(pParse->db, p->pPartition, 0);
    pWin->pOrderBy = FUNC5(pParse->db, p->pOrderBy, 0);
    pWin->pStart = FUNC4(pParse->db, p->pStart, 0);
    pWin->pEnd = FUNC4(pParse->db, p->pEnd, 0);
    pWin->eStart = p->eStart;
    pWin->eEnd = p->eEnd;
    pWin->eFrmType = p->eFrmType;
    pWin->eExclude = p->eExclude;
  }else{
    FUNC6(pParse, pWin, pList);
  }
  if( (pWin->eFrmType==TK_RANGE)
   && (pWin->pStart || pWin->pEnd) 
   && (pWin->pOrderBy==0 || pWin->pOrderBy->nExpr!=1)
  ){
    FUNC1(pParse, 
      "RANGE with offset PRECEDING/FOLLOWING requires one ORDER BY expression"
    );
  }else
  if( pFunc->funcFlags & SQLITE_FUNC_WINDOW ){
    sqlite3 *db = pParse->db;
    if( pWin->pFilter ){
      FUNC1(pParse, 
          "FILTER clause may only be used with aggregate window functions"
      );
    }else{
      struct WindowUpdate {
        const char *zFunc;
        int eFrmType;
        int eStart;
        int eEnd;
      } aUp[] = {
        { row_numberName,   TK_ROWS,   TK_UNBOUNDED, TK_CURRENT }, 
        { dense_rankName,   TK_RANGE,  TK_UNBOUNDED, TK_CURRENT }, 
        { rankName,         TK_RANGE,  TK_UNBOUNDED, TK_CURRENT }, 
        { percent_rankName, TK_GROUPS, TK_CURRENT,   TK_UNBOUNDED }, 
        { cume_distName,    TK_GROUPS, TK_FOLLOWING, TK_UNBOUNDED }, 
        { ntileName,        TK_ROWS,   TK_CURRENT,   TK_UNBOUNDED }, 
        { leadName,         TK_ROWS,   TK_UNBOUNDED, TK_UNBOUNDED }, 
        { lagName,          TK_ROWS,   TK_UNBOUNDED, TK_CURRENT }, 
      };
      int i;
      for(i=0; i<FUNC0(aUp); i++){
        if( pFunc->zName==aUp[i].zFunc ){
          FUNC3(db, pWin->pStart);
          FUNC3(db, pWin->pEnd);
          pWin->pEnd = pWin->pStart = 0;
          pWin->eFrmType = aUp[i].eFrmType;
          pWin->eStart = aUp[i].eStart;
          pWin->eEnd = aUp[i].eEnd;
          pWin->eExclude = 0;
          if( pWin->eStart==TK_FOLLOWING ){
            pWin->pStart = FUNC2(db, TK_INTEGER, "1");
          }
          break;
        }
      }
    }
  }
  pWin->pFunc = pFunc;
}