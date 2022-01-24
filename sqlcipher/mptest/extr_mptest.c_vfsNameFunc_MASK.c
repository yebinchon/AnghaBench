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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_FCNTL_VFSNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = FUNC1(context);
  char *zVfs = 0;
  FUNC0(argc);
  FUNC0(argv);
  FUNC2(db, "main", SQLITE_FCNTL_VFSNAME, &zVfs);
  if( zVfs ){
    FUNC3(context, zVfs, -1, sqlite3_free);
  }
}