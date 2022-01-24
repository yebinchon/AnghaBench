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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  Fts3Cursor ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *pContext,      /* SQLite function call context */
  int nVal,                       /* Size of argument array */
  sqlite3_value **apVal           /* Array of arguments */
){
  Fts3Cursor *pCsr;               /* Cursor handle passed through apVal[0] */

  FUNC0(nVal);

  FUNC1( nVal==1 );
  if( FUNC3(pContext, "offsets", apVal[0], &pCsr) ) return;
  FUNC1( *pCsr );
  if( SQLITE_OK==FUNC2(pContext, pCsr) ){
    FUNC4(pContext, pCsr);
  }
}