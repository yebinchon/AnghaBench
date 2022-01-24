#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  fulltext_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(sqlite3_vtab *pVtab, int nArg, sqlite3_value **ppArg,
                   sqlite_int64 *pRowid){
  fulltext_vtab *v = (fulltext_vtab *) pVtab;

  if( nArg<2 ){
    return FUNC1(v, FUNC3(ppArg[0]));
  }

  if( FUNC5(ppArg[0]) != SQLITE_NULL ){
    return SQLITE_ERROR;   /* an update; not yet supported */
  }

  FUNC0( nArg==3 );    /* ppArg[1] = rowid, ppArg[2] = content */
  return FUNC2(v, ppArg[1],
                      (const char *)FUNC4(ppArg[2]), pRowid);
}