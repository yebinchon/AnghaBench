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
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *ctx, 
  int nArg, 
  sqlite3_value **apArg
){
  if( nArg!=1 && nArg!=2 ){
    FUNC3(ctx, 
        "wrong number of arguments to function rtreecheck()", -1
    );
  }else{
    int rc;
    char *zReport = 0;
    const char *zDb = (const char*)FUNC6(apArg[0]);
    const char *zTab;
    if( nArg==1 ){
      zTab = zDb;
      zDb = "main";
    }else{
      zTab = (const char*)FUNC6(apArg[1]);
    }
    rc = FUNC0(FUNC1(ctx), zDb, zTab, &zReport);
    if( rc==SQLITE_OK ){
      FUNC5(ctx, zReport ? zReport : "ok", -1, SQLITE_TRANSIENT);
    }else{
      FUNC4(ctx, rc);
    }
    FUNC2(zReport);
  }
}