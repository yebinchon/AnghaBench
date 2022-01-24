#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_6__ {TYPE_1__* pVtab; } ;
typedef  TYPE_2__ amatch_cursor ;
struct TYPE_5__ {int /*<<< orphan*/  nCursor; } ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab_cursor *cur){
  amatch_cursor *pCur = (amatch_cursor *)cur;
  FUNC0(pCur);
  pCur->pVtab->nCursor--;
  FUNC1(pCur);
  return SQLITE_OK;
}