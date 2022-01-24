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
struct TYPE_4__ {int /*<<< orphan*/  nWord; int /*<<< orphan*/  iLang; TYPE_1__* pCurrent; } ;
typedef  TYPE_2__ amatch_cursor ;
struct TYPE_3__ {int /*<<< orphan*/  rCost; int /*<<< orphan*/  zWord; } ;

/* Variables and functions */
#define  AMATCH_COL_DISTANCE 131 
#define  AMATCH_COL_LANGUAGE 130 
#define  AMATCH_COL_NWORD 129 
#define  AMATCH_COL_WORD 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  amatch_cursor *pCur = (amatch_cursor*)cur;
  switch( i ){
    case AMATCH_COL_WORD: {
      FUNC2(ctx, pCur->pCurrent->zWord+2, -1, SQLITE_STATIC);
      break;
    }
    case AMATCH_COL_DISTANCE: {
      FUNC0(ctx, pCur->pCurrent->rCost);
      break;
    }
    case AMATCH_COL_LANGUAGE: {
      FUNC0(ctx, pCur->iLang);
      break;
    }
    case AMATCH_COL_NWORD: {
      FUNC0(ctx, pCur->nWord);
      break;
    }
    default: {
      FUNC1(ctx);
      break;
    }
  }
  return SQLITE_OK;
}