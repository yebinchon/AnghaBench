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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_3__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  TERM_INSERT_STMT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(fulltext_vtab *v, const char *zTerm, int nTerm,
                       sqlite_int64 iFirst, DocList *doclist){
  sqlite3_stmt *s;
  int rc = FUNC0(v, TERM_INSERT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC4(s, 1, zTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC3(s, 2, iFirst);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC2(s, 3, doclist->pData, doclist->nData, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  return FUNC1(v, TERM_INSERT_STMT, &s);
}