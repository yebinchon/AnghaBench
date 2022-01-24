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
typedef  int /*<<< orphan*/  x ;
struct EvalResult {char* zSep; int szSep; char* z; scalar_t__ nUsed; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  callback ; 
 int /*<<< orphan*/  FUNC0 (struct EvalResult*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct EvalResult*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/  (*) (char*)) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zSql;
  sqlite3 *db;
  char *zErr = 0;
  int rc;
  struct EvalResult x;

  FUNC0(&x, 0, sizeof(x));
  x.zSep = " ";
  zSql = (const char*)FUNC7(argv[0]);
  if( zSql==0 ) return;
  if( argc>1 ){
    x.zSep = (const char*)FUNC7(argv[1]);
    if( x.zSep==0 ) return;
  }
  x.szSep = (int)FUNC8(x.zSep);
  db = FUNC1(context);
  rc = FUNC2(db, zSql, callback, &x, &zErr);
  if( rc!=SQLITE_OK ){
    FUNC4(context, zErr, -1);
    FUNC3(zErr);
  }else if( x.zSep==0 ){
    FUNC5(context);
    FUNC3(x.z);
  }else{
    FUNC6(context, x.z, (int)x.nUsed, sqlite3_free);
  }
}