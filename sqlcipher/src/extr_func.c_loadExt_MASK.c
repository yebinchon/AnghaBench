#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_LoadExtFunc ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(sqlite3_context *context, int argc, sqlite3_value **argv){
  const char *zFile = (const char *)FUNC4(argv[0]);
  const char *zProc;
  sqlite3 *db = FUNC0(context);
  char *zErrMsg = 0;

  /* Disallow the load_extension() SQL function unless the SQLITE_LoadExtFunc
  ** flag is set.  See the sqlite3_enable_load_extension() API.
  */
  if( (db->flags & SQLITE_LoadExtFunc)==0 ){
    FUNC3(context, "not authorized", -1);
    return;
  }

  if( argc==2 ){
    zProc = (const char *)FUNC4(argv[1]);
  }else{
    zProc = 0;
  }
  if( zFile && FUNC2(db, zFile, zProc, &zErrMsg) ){
    FUNC3(context, zErrMsg, -1);
    FUNC1(zErrMsg);
  }
}