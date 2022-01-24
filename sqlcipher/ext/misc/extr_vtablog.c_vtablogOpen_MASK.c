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
struct TYPE_5__ {int iInst; int nCursor; } ;
typedef  TYPE_1__ vtablog_vtab ;
struct TYPE_6__ {int iCursor; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ vtablog_cursor ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 TYPE_2__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab *p, sqlite3_vtab_cursor **ppCursor){
  vtablog_vtab *pTab = (vtablog_vtab*)p;
  vtablog_cursor *pCur;
  FUNC1("vtablogOpen(tab=%d, cursor=%d)\n", pTab->iInst, ++pTab->nCursor);
  pCur = FUNC2( sizeof(*pCur) );
  if( pCur==0 ) return SQLITE_NOMEM;
  FUNC0(pCur, 0, sizeof(*pCur));
  pCur->iCursor = pTab->nCursor;
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}