#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {scalar_t__ pVtab; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  Fts3Table ;
typedef  TYPE_2__ Fts3Cursor ;

/* Variables and functions */
#define  SQLITE_DONE 129 
#define  SQLITE_OK 128 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *pContext,      /* SQLite function call context */
  int nVal,                       /* Size of argument array */
  sqlite3_value **apVal           /* Array of arguments */
){
  int rc;                         /* Return code */
  Fts3Table *p;                   /* Virtual table handle */
  Fts3Cursor *pCursor;            /* Cursor handle passed through apVal[0] */

  FUNC0(nVal);

  FUNC1( nVal==1 );
  if( FUNC2(pContext, "optimize", apVal[0], &pCursor) ) return;
  p = (Fts3Table *)pCursor->base.pVtab;
  FUNC1( *p );

  rc = FUNC3(p);

  switch( rc ){
    case SQLITE_OK:
      FUNC5(pContext, "Index optimized", -1, SQLITE_STATIC);
      break;
    case SQLITE_DONE:
      FUNC5(pContext, "Index already optimal", -1, SQLITE_STATIC);
      break;
    default:
      FUNC4(pContext, rc);
      break;
  }
}