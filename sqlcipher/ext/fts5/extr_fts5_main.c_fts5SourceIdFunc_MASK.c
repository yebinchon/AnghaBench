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

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *pCtx,          /* Function call context */
  int nArg,                       /* Number of args */
  sqlite3_value **apUnused        /* Function arguments */
){
  FUNC1( nArg==0 );
  FUNC0(nArg, apUnused);
  FUNC2(pCtx, "--FTS5-SOURCE-ID--", -1, SQLITE_TRANSIENT);
}