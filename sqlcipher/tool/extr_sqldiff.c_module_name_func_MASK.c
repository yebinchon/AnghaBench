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
typedef  int /*<<< orphan*/  zToken ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *pCtx, 
  int nVal, sqlite3_value **apVal
){
  const char *zSql;
  char zToken[32];

  FUNC0( nVal==1 );
  zSql = (const char*)FUNC4(apVal[0]);

  zSql = FUNC1(zSql, zToken, sizeof(zToken));
  if( zSql==0 || FUNC3(zToken, "create") ) return;
  zSql = FUNC1(zSql, zToken, sizeof(zToken));
  if( zSql==0 || FUNC3(zToken, "virtual") ) return;
  zSql = FUNC1(zSql, zToken, sizeof(zToken));
  if( zSql==0 || FUNC3(zToken, "table") ) return;
  zSql = FUNC1(zSql, zToken, sizeof(zToken));
  if( zSql==0 ) return;
  zSql = FUNC1(zSql, zToken, sizeof(zToken));
  if( zSql==0 || FUNC3(zToken, "using") ) return;
  zSql = FUNC1(zSql, zToken, sizeof(zToken));
  
  FUNC2(pCtx, zToken, -1, SQLITE_TRANSIENT);
}