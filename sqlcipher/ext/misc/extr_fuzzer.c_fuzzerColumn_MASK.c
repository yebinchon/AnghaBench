#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {TYPE_2__* pStem; int /*<<< orphan*/  zBuf; int /*<<< orphan*/  nBuf; } ;
typedef  TYPE_1__ fuzzer_cursor ;
struct TYPE_4__ {int /*<<< orphan*/  rCostX; } ;

/* Variables and functions */
 scalar_t__ SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  fuzzer_cursor *pCur = (fuzzer_cursor*)cur;
  if( i==0 ){
    /* the "word" column */
    if( FUNC0(pCur->pStem, &pCur->zBuf, &pCur->nBuf)==SQLITE_NOMEM ){
      return SQLITE_NOMEM;
    }
    FUNC3(ctx, pCur->zBuf, -1, SQLITE_TRANSIENT);
  }else if( i==1 ){
    /* the "distance" column */
    FUNC1(ctx, pCur->pStem->rCostX);
  }else{
    /* All other columns are NULL */
    FUNC2(ctx);
  }
  return SQLITE_OK;
}