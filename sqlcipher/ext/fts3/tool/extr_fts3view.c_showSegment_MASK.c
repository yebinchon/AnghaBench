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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 char** azExtra ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(sqlite3 *db, const char *zTab){
  const unsigned char *aData;
  int nData;
  sqlite3_stmt *pStmt;

  pStmt = FUNC2(db, zTab, azExtra[0]);
  if( FUNC8(pStmt)!=SQLITE_ROW ){
    FUNC7(pStmt);
    return;
  }
  nData = FUNC6(pStmt, 0);
  aData = FUNC5(pStmt, 0);
  FUNC4("Segment %s of size %d bytes:\n", azExtra[0], nData);
  if( FUNC1("raw", 0, 0)!=0 ){
    FUNC3(aData, nData);
  }else{
    FUNC0(aData, nData);
  }
  FUNC7(pStmt);
}