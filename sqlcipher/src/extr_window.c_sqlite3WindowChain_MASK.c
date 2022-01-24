#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_10__ {scalar_t__ pPartition; scalar_t__ pOrderBy; scalar_t__ bImplicitFrame; scalar_t__ zBase; } ;
typedef  TYPE_1__ Window ;
struct TYPE_11__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char const*,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,TYPE_1__*,scalar_t__) ; 

void FUNC5(Parse *pParse, Window *pWin, Window *pList){
  if( pWin->zBase ){
    sqlite3 *db = pParse->db;
    Window *pExist = FUNC4(pParse, pList, pWin->zBase);
    if( pExist ){
      const char *zErr = 0;
      /* Check for errors */
      if( pWin->pPartition ){
        zErr = "PARTITION clause";
      }else if( pExist->pOrderBy && pWin->pOrderBy ){
        zErr = "ORDER BY clause";
      }else if( pExist->bImplicitFrame==0 ){
        zErr = "frame specification";
      }
      if( zErr ){
        FUNC2(pParse, 
            "cannot override %s of window: %s", zErr, pWin->zBase
        );
      }else{
        pWin->pPartition = FUNC3(db, pExist->pPartition, 0);
        if( pExist->pOrderBy ){
          FUNC0( pWin->pOrderBy==0 );
          pWin->pOrderBy = FUNC3(db, pExist->pOrderBy, 0);
        }
        FUNC1(db, pWin->zBase);
        pWin->zBase = 0;
      }
    }
  }
}