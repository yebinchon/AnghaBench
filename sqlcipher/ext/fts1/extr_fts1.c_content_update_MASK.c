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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENT_UPDATE_STMT ; 
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(fulltext_vtab *v, sqlite3_value **pValues,
                          sqlite_int64 iRowid){
  sqlite3_stmt *s;
  int i;
  int rc = FUNC0(v, CONTENT_UPDATE_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  for(i=0; i<v->nColumn; ++i){
    rc = FUNC3(s, 1+i, pValues[i]);
    if( rc!=SQLITE_OK ) return rc;
  }

  rc = FUNC2(s, 1+v->nColumn, iRowid);
  if( rc!=SQLITE_OK ) return rc;

  return FUNC1(v, CONTENT_UPDATE_STMT, &s);
}