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
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  double sqlite3_int64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  SQLITE_BLOB 132 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,double*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 double FUNC5 (int /*<<< orphan*/ *,int) ; 
 double FUNC6 (int /*<<< orphan*/ *,int) ; 
 double FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(FILE *out, sqlite3_stmt *pStmt, int k){
  int iDType = FUNC9(pStmt, k);
  sqlite3_int64 iX;
  double rX;
  sqlite3_uint64 uX;
  int j;

  FUNC2(iDType, out);
  switch( iDType ){
    case SQLITE_INTEGER:
      iX = FUNC7(pStmt, k);
      FUNC1(&uX, &iX, 8);
      for(j=56; j>=0; j-=8) FUNC2((uX>>j)&0xff, out);
      break;
    case SQLITE_FLOAT:
      rX = FUNC6(pStmt, k);
      FUNC1(&uX, &rX, 8);
      for(j=56; j>=0; j-=8) FUNC2((uX>>j)&0xff, out);
      break;
    case SQLITE_TEXT:
      iX = FUNC5(pStmt, k);
      FUNC3(out, (sqlite3_uint64)iX);
      FUNC0(FUNC8(pStmt, k),1,(size_t)iX,out);
      break;
    case SQLITE_BLOB:
      iX = FUNC5(pStmt, k);
      FUNC3(out, (sqlite3_uint64)iX);
      FUNC0(FUNC4(pStmt, k),1,(size_t)iX,out);
      break;
    case SQLITE_NULL:
      break;
  }
}