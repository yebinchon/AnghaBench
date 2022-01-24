#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  fts5_api ;
struct TYPE_2__ {int /*<<< orphan*/  api; } ;
typedef  TYPE_1__ Fts5Global ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *pCtx,          /* Function call context */
  int nArg,                       /* Number of args */
  sqlite3_value **apArg           /* Function arguments */
){
  Fts5Global *pGlobal = (Fts5Global*)FUNC2(pCtx);
  fts5_api **ppApi;
  FUNC0(nArg);
  FUNC1( nArg==1 );
  ppApi = (fts5_api**)FUNC3(apArg[0], "fts5_api_ptr");
  if( ppApi ) *ppApi = &pGlobal->api;
}