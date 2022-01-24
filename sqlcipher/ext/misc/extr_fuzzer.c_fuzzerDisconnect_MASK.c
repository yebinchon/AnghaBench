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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_4__ {scalar_t__ nCursor; struct TYPE_4__* pNext; struct TYPE_4__* pRule; } ;
typedef  TYPE_1__ fuzzer_vtab ;
typedef  TYPE_1__ fuzzer_rule ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVtab){
  fuzzer_vtab *p = (fuzzer_vtab*)pVtab;
  FUNC0( p->nCursor==0 );
  while( p->pRule ){
    fuzzer_rule *pRule = p->pRule;
    p->pRule = pRule->pNext;
    FUNC1(pRule);
  }
  FUNC1(p);
  return SQLITE_OK;
}