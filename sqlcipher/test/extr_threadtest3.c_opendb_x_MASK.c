#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ rc; } ;
struct TYPE_7__ {scalar_t__ db; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_READWRITE ; 
 int SQLITE_OPEN_URI ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  busyhandler ; 
 int /*<<< orphan*/  md5finalize ; 
 int /*<<< orphan*/  md5step ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(
  Error *pErr,                    /* IN/OUT: Error code */
  Sqlite *pDb,                    /* OUT: Database handle */
  const char *zFile,              /* Database file name */
  int bDelete                     /* True to delete db file before opening */
){
  if( pErr->rc==SQLITE_OK ){
    int rc;
    int flags = SQLITE_OPEN_CREATE | SQLITE_OPEN_READWRITE | SQLITE_OPEN_URI;
    if( bDelete ) FUNC6(zFile);
    rc = FUNC4(zFile, &pDb->db, flags, 0);
    if( rc ){
      FUNC5(pErr, pDb, "open");
      FUNC1(pDb->db);
      pDb->db = 0;
    }else{
      FUNC2(
          pDb->db, "md5sum", -1, SQLITE_UTF8, 0, 0, md5step, md5finalize
      );
      FUNC0(pDb->db, busyhandler, 0);
      FUNC3(pDb->db, "PRAGMA synchronous=OFF", 0, 0, 0);
    }
  }
}