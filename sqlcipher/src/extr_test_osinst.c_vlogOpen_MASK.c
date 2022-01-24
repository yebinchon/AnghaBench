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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ VfslogCsr ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  VfslogCsr *pCsr;                /* Newly allocated cursor object */

  pCsr = FUNC1(sizeof(VfslogCsr));
  if( !pCsr ) return SQLITE_NOMEM;
  FUNC0(pCsr, 0, sizeof(VfslogCsr));
  *ppCursor = &pCsr->base;
  return SQLITE_OK;
}