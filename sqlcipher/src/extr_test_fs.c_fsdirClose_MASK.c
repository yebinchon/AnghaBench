#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zDir; scalar_t__ pDir; } ;
typedef  TYPE_1__ FsdirCsr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab_cursor *cur){
  FsdirCsr *pCur = (FsdirCsr*)cur;
  if( pCur->pDir ) FUNC0(pCur->pDir);
  FUNC1(pCur->zDir);
  FUNC1(pCur);
  return SQLITE_OK;
}