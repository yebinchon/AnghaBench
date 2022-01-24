#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_5__ {struct TYPE_5__* zPattern; } ;
typedef  TYPE_1__ spellfix1_cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab_cursor *cur){
  spellfix1_cursor *pCur = (spellfix1_cursor *)cur;
  FUNC0(pCur);
  FUNC1(pCur, 0);
  FUNC2(pCur->zPattern);
  FUNC2(pCur);
  return SQLITE_OK;
}