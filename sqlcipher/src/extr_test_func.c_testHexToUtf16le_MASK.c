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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **argv
){
  int n;
  const char *zIn;
  char *zOut;
  FUNC0( nArg==1 );
  n = FUNC4(argv[0]);
  zIn = (const char*)FUNC5(argv[0]);
  zOut = FUNC1( n/2 );
  if( zOut==0 ){
    FUNC2(pCtx);
  }else{
    FUNC6(zIn, zOut);
    FUNC3(pCtx, zOut, n/2, sqlite3_free);
  }
}