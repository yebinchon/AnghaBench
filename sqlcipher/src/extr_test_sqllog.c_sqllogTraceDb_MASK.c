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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_2__ {scalar_t__ bConditional; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  SQLITE_IOERR ; 
 int SQLITE_OK ; 
 int SQLLOG_NAMESZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ sqllogglobal ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(sqlite3 *db){
  int bRet = 1;
  if( sqllogglobal.bConditional ){
    char zFile[SQLLOG_NAMESZ];      /* Attached database name */
    int rc = FUNC3(db, "main", 0, zFile);
    if( rc==SQLITE_OK ){
      int nFile = FUNC4(zFile);
      if( (SQLLOG_NAMESZ-nFile)<8 ){
        FUNC2(SQLITE_IOERR, 
            "sqllogTraceDb(): database name too long (%d bytes)", nFile
        );
        bRet = 0;
      }else{
        FUNC1(&zFile[nFile], "-sqllog", 8);
        bRet = !FUNC0(zFile, F_OK);
      }
    }
  }
  return bRet;
}