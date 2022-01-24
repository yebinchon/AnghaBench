#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_6__ {scalar_t__ nData; } ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(fulltext_vtab *v, const char *zTerm, int nTerm,
                             sqlite_int64 iDocid){
  sqlite_int64 iFirst;
  sqlite_int64 iIndexRow;
  DocList doclist;

  int rc = FUNC2(v, zTerm, nTerm, iDocid, &iFirst);
  if( rc!=SQLITE_ROW ) return SQLITE_ERROR;

  rc = FUNC4(v, zTerm, nTerm, iFirst, &iIndexRow, &doclist);
  if( rc!=SQLITE_OK ) return rc;

  if( FUNC1(&doclist, iDocid, NULL) ){
    if( doclist.nData>0 ){
      rc = FUNC5(v, iIndexRow, &doclist);
    } else {  /* empty posting list */
      rc = FUNC3(v, iIndexRow);
    }
  }
  FUNC0(&doclist);
  return rc;
}