#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {int rc; char* zErr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pStmt; } ;
typedef  TYPE_1__ Statement ;
typedef  int /*<<< orphan*/  Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(
  Error *pErr,                    /* IN/OUT: Error code */
  Sqlite *pDb                     /* Database handle */
){
  if( pErr->rc==SQLITE_OK ){
    Statement *pStatement;        /* Statement to execute */
    char *zErr = 0;               /* Integrity check error */

    pStatement = FUNC0(pErr, pDb, "PRAGMA integrity_check");
    if( pStatement ){
      sqlite3_stmt *pStmt = pStatement->pStmt;
      while( SQLITE_ROW==FUNC4(pStmt) ){
        const char *z = (const char*)FUNC1(pStmt, 0);
        if( FUNC5(z, "ok") ){
          if( zErr==0 ){
            zErr = FUNC2("%s", z);
          }else{
            zErr = FUNC2("%z\n%s", zErr, z);
          }
        }
      }
      FUNC3(pStmt);

      if( zErr ){
        pErr->zErr = zErr;
        pErr->rc = 1;
      }
    }
  }
}