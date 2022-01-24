#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_4__ {scalar_t__ zInput; void* iLang; void* rLimit; } ;
typedef  TYPE_1__ amatch_cursor ;
typedef  void* amatch_cost ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  amatch_cursor *pCur = (amatch_cursor *)pVtabCursor;
  const char *zWord = "*";
  int idx;

  FUNC1(pCur);
  idx = 0;
  if( idxNum & 1 ){
    zWord = (const char*)FUNC5(argv[0]);
    idx++;
  }
  if( idxNum & 2 ){
    pCur->rLimit = (amatch_cost)FUNC4(argv[idx]);
    idx++;
  }
  if( idxNum & 4 ){
    pCur->iLang = (amatch_cost)FUNC4(argv[idx]);
    idx++;
  }
  pCur->zInput = FUNC3("%s", zWord);
  if( pCur->zInput==0 ) return SQLITE_NOMEM;
  FUNC0(pCur, 0, 0, "", "");
  FUNC2(pVtabCursor);

  return SQLITE_OK;
}