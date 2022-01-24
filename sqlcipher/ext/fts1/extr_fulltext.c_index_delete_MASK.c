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
struct TYPE_6__ {int /*<<< orphan*/  pTokenizer; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  int /*<<< orphan*/  Hash ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int SQLITE_OK ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(fulltext_vtab *v, sqlite_int64 iRow){
  char *zText;
  Hash terms;
  HashElem *e;

  int rc = FUNC8(v, iRow, &zText);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC6(&terms, v->pTokenizer, zText, iRow);
  FUNC10(zText);
  if( rc!=SQLITE_OK ) return rc;

  for(e=FUNC2(&terms); e; e=FUNC5(e)){
    rc = FUNC11(v, FUNC3(e), FUNC4(e), iRow);
    if( rc!=SQLITE_OK ) break;
  }
  for(e=FUNC2(&terms); e; e=FUNC5(e)){
    DocList *p = FUNC1(e);
    FUNC9(p);
  }
  FUNC0(&terms);

  return FUNC7(v, iRow);
}