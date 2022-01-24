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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ FsdirCsr ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  FsdirCsr *pCur;
  /* Allocate an extra 256 bytes because it is undefined how big dirent.d_name
  ** is and we need enough space.  Linux provides plenty already, but
  ** Solaris only provides one byte. */
  pCur = (FsdirCsr*)FUNC1(sizeof(FsdirCsr)+256);
  if( pCur==0 ) return SQLITE_NOMEM;
  FUNC0(pCur, 0, sizeof(FsdirCsr));
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}