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
typedef  int /*<<< orphan*/  rtag ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(sqlite3 *db, const char *zTab){
  int mxIndex, iIndex;
  sqlite3_stmt *pStmt = 0;
  sqlite3_stmt *pStmt2 = 0;
  int prevLevel;

  pStmt = FUNC1(db, "SELECT max(level/1024) FROM '%q_segdir'", zTab);
  if( FUNC11(pStmt)==SQLITE_ROW ){
    mxIndex = FUNC6(pStmt, 0);
  }else{
    mxIndex = 0;
  }
  FUNC8(pStmt);

  FUNC3("Number of inverted indices............... %3d\n", mxIndex+1);
  pStmt = FUNC1(db,
    "SELECT level, idx, start_block, leaves_end_block, end_block, rowid"
    "  FROM '%q_segdir'"
    " WHERE level/1024==?"
    " ORDER BY level DESC, idx",
    zTab);
  pStmt2 = FUNC1(db,
    "SELECT blockid FROM '%q_segments'"
    " WHERE blockid BETWEEN ? AND ? ORDER BY blockid",
    zTab);
  for(iIndex=0; iIndex<=mxIndex; iIndex++){
    if( mxIndex>0 ){
      FUNC3("**************************** Index %d "
             "****************************\n", iIndex);
    }
    FUNC4(pStmt, 1, iIndex);
    prevLevel = -1;
    while( FUNC11(pStmt)==SQLITE_ROW ){
      int iLevel = FUNC6(pStmt, 0)%1024;
      int iIdx = FUNC6(pStmt, 1);
      sqlite3_int64 iStart = FUNC7(pStmt, 2);
      sqlite3_int64 iLEnd = FUNC7(pStmt, 3);
      sqlite3_int64 iEnd = FUNC7(pStmt, 4);
      char rtag[20];
      if( iLevel!=prevLevel ){
        FUNC3("level %2d idx %2d", iLevel, iIdx);
        prevLevel = iLevel;
      }else{
        FUNC3("         idx %2d", iIdx);
      }
      FUNC10(sizeof(rtag), rtag, "r%lld",
                       FUNC7(pStmt,5));
      FUNC3("  root   %9s\n", rtag);
      if( iLEnd>iStart ){
        sqlite3_int64 iLower, iPrev = 0, iX;
        if( iLEnd+1<=iEnd ){
          FUNC5(pStmt2, 1, iLEnd+1);
          FUNC5(pStmt2, 2, iEnd);
          iLower = -1;        
          while( FUNC11(pStmt2)==SQLITE_ROW ){
            iX = FUNC7(pStmt2, 0);
            if( iLower<0 ){
              iLower = iPrev = iX;
            }else if( iX==iPrev+1 ){
              iPrev = iX;
            }else{
              FUNC2(iLower, iPrev);
              iLower = iPrev = iX;
            }
          }
          FUNC9(pStmt2);
          if( iLower>=0 ){
            if( iLower==iPrev && iLower==iEnd
             && FUNC0(db,zTab,iLower)
            ){
              FUNC3("                 null   %9lld\n", iLower);
            }else{
              FUNC2(iLower, iPrev);
            }
          }
        }
        FUNC3("                 leaves %9lld thru %9lld  (%lld blocks)\n",
               iStart, iLEnd, iLEnd - iStart + 1);
      }
    }
    FUNC9(pStmt);
  }
  FUNC8(pStmt);
  FUNC8(pStmt2);
}