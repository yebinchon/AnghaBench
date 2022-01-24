#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_10__ {int /*<<< orphan*/  nBasis; int /*<<< orphan*/  n; TYPE_2__* pRule; } ;
typedef  TYPE_3__ fuzzer_stem ;
struct TYPE_9__ {char* zFrom; scalar_t__ nTo; scalar_t__ nFrom; scalar_t__ rCost; int /*<<< orphan*/  pNext; } ;
struct TYPE_11__ {int rLimit; int iRowid; TYPE_2__ nullRule; TYPE_3__* pStem; TYPE_1__* pVtab; void* iRuleset; } ;
typedef  TYPE_4__ fuzzer_cursor ;
typedef  void* fuzzer_cost ;
struct TYPE_8__ {int /*<<< orphan*/  pRule; } ;

/* Variables and functions */
 int FUZZER_MX_OUTPUT_LENGTH ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,char const*,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  fuzzer_cursor *pCur = (fuzzer_cursor *)pVtabCursor;
  const char *zWord = "";
  fuzzer_stem *pStem;
  int idx;

  FUNC1(pCur, 1);
  pCur->rLimit = 2147483647;
  idx = 0;
  if( idxNum & 1 ){
    zWord = (const char*)FUNC4(argv[0]);
    idx++;
  }
  if( idxNum & 2 ){
    pCur->rLimit = (fuzzer_cost)FUNC3(argv[idx]);
    idx++;
  }
  if( idxNum & 4 ){
    pCur->iRuleset = (fuzzer_cost)FUNC3(argv[idx]);
    idx++;
  }
  pCur->nullRule.pNext = pCur->pVtab->pRule;
  pCur->nullRule.rCost = 0;
  pCur->nullRule.nFrom = 0;
  pCur->nullRule.nTo = 0;
  pCur->nullRule.zFrom = "";
  pCur->iRowid = 1;
  FUNC0( pCur->pStem==0 );

  /* If the query term is longer than FUZZER_MX_OUTPUT_LENGTH bytes, this
  ** query will return zero rows.  */
  if( (int)FUNC5(zWord)<FUZZER_MX_OUTPUT_LENGTH ){
    pCur->pStem = pStem = FUNC2(pCur, zWord, (fuzzer_cost)0);
    if( pStem==0 ) return SQLITE_NOMEM;
    pStem->pRule = &pCur->nullRule;
    pStem->n = pStem->nBasis;
  }else{
    pCur->rLimit = 0;
  }

  return SQLITE_OK;
}