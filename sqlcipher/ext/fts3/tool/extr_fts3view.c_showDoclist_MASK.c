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
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 char** azExtra ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(sqlite3 *db, const char *zTab){
  const unsigned char *aData;
  sqlite3_int64 offset;
  int nData;
  sqlite3_stmt *pStmt;

  offset = FUNC1(azExtra[1]);
  nData = FUNC0(azExtra[2]);
  pStmt = FUNC4(db, zTab, azExtra[0]);
  if( FUNC9(pStmt)!=SQLITE_ROW ){
    FUNC8(pStmt);
    return;
  }
  aData = FUNC7(pStmt, 0);
  FUNC6("Doclist at %s offset %lld of size %d bytes:\n",
         azExtra[0], offset, nData);
  if( FUNC3("raw", 0, 0)!=0 ){
    FUNC5(aData+offset, nData);
  }else{
    FUNC2(aData+offset, nData);
  }
  FUNC8(pStmt);
}