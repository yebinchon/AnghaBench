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
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 double FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(sqlite3 *db, const char *zTab){
  sqlite3_stmt *pStmt;
  int nSeg = 0;
  sqlite3_int64 szSeg = 0, mxSeg = 0;
  int nIdx = 0;
  sqlite3_int64 szIdx = 0, mxIdx = 0;
  int nRoot = 0;
  sqlite3_int64 szRoot = 0, mxRoot = 0;
  sqlite3_int64 mx;
  int nLeaf;
  int n;
  int pgsz;
  int mxLevel;
  int i;

  pStmt = FUNC0(db,
                  "SELECT count(*), sum(length(block)), max(length(block))"
                  " FROM '%q_segments'",
                  zTab);
  while( FUNC6(pStmt)==SQLITE_ROW ){
    nSeg = FUNC3(pStmt, 0);
    szSeg = FUNC4(pStmt, 1);
    mxSeg = FUNC4(pStmt, 2);
  }
  FUNC5(pStmt);
  pStmt = FUNC0(db,
            "SELECT count(*), sum(length(block)), max(length(block))"
            "  FROM '%q_segments' a JOIN '%q_segdir' b"
            " WHERE a.blockid BETWEEN b.leaves_end_block+1 AND b.end_block",
            zTab, zTab);
  while( FUNC6(pStmt)==SQLITE_ROW ){
    nIdx = FUNC3(pStmt, 0);
    szIdx = FUNC4(pStmt, 1);
    mxIdx = FUNC4(pStmt, 2);
  }
  FUNC5(pStmt);
  pStmt = FUNC0(db,
            "SELECT count(*), sum(length(root)), max(length(root))"
            "  FROM '%q_segdir'",
            zTab);
  while( FUNC6(pStmt)==SQLITE_ROW ){
    nRoot = FUNC3(pStmt, 0);
    szRoot = FUNC4(pStmt, 1);
    mxRoot = FUNC4(pStmt, 2);
  }
  FUNC5(pStmt);

  FUNC1("Number of segments....................... %9d\n", nSeg+nRoot);
  FUNC1("Number of leaf segments.................. %9d\n", nSeg-nIdx);
  FUNC1("Number of index segments................. %9d\n", nIdx);
  FUNC1("Number of root segments.................. %9d\n", nRoot);
  FUNC1("Total size of all segments............... %9lld\n", szSeg+szRoot);
  FUNC1("Total size of all leaf segments.......... %9lld\n", szSeg-szIdx);
  FUNC1("Total size of all index segments......... %9lld\n", szIdx);
  FUNC1("Total size of all root segments.......... %9lld\n", szRoot);
  if( nSeg>0 ){
    FUNC1("Average size of all segments............. %11.1f\n",
            (double)(szSeg+szRoot)/(double)(nSeg+nRoot));
    FUNC1("Average size of leaf segments............ %11.1f\n",
            (double)(szSeg-szIdx)/(double)(nSeg-nIdx));
  }
  if( nIdx>0 ){
    FUNC1("Average size of index segments........... %11.1f\n",
            (double)szIdx/(double)nIdx);
  }
  if( nRoot>0 ){
    FUNC1("Average size of root segments............ %11.1f\n",
            (double)szRoot/(double)nRoot);
  }
  mx = mxSeg;
  if( mx<mxRoot ) mx = mxRoot;
  FUNC1("Maximum segment size..................... %9lld\n", mx);
  FUNC1("Maximum index segment size............... %9lld\n", mxIdx);
  FUNC1("Maximum root segment size................ %9lld\n", mxRoot);

  pStmt = FUNC0(db, "PRAGMA page_size");
  pgsz = 1024;
  while( FUNC6(pStmt)==SQLITE_ROW ){
    pgsz = FUNC3(pStmt, 0);
  }
  FUNC5(pStmt);
  FUNC1("Database page size....................... %9d\n", pgsz);
  pStmt = FUNC0(db,
            "SELECT count(*)"
            "  FROM '%q_segments' a JOIN '%q_segdir' b"
            " WHERE a.blockid BETWEEN b.start_block AND b.leaves_end_block"
            "   AND length(a.block)>%d",
            zTab, zTab, pgsz-45);
  n = 0;
  while( FUNC6(pStmt)==SQLITE_ROW ){
    n = FUNC3(pStmt, 0);
  }
  FUNC5(pStmt);
  nLeaf = nSeg - nIdx;
  FUNC1("Leaf segments larger than %5d bytes.... %9d   %5.2f%%\n",
         pgsz-45, n, nLeaf>0 ? n*100.0/nLeaf : 0.0);

  pStmt = FUNC0(db, "SELECT max(level%%1024) FROM '%q_segdir'", zTab);
  mxLevel = 0;
  while( FUNC6(pStmt)==SQLITE_ROW ){
    mxLevel = FUNC3(pStmt, 0);
  }
  FUNC5(pStmt);

  for(i=0; i<=mxLevel; i++){
    pStmt = FUNC0(db,
           "SELECT count(*), sum(len), avg(len), max(len), sum(len>%d),"
           "       count(distinct idx)"
           "  FROM (SELECT length(a.block) AS len, idx"
           "          FROM '%q_segments' a JOIN '%q_segdir' b"
           "         WHERE (a.blockid BETWEEN b.start_block"
                                       " AND b.leaves_end_block)"
           "           AND (b.level%%1024)==%d)",
           pgsz-45, zTab, zTab, i);
    if( FUNC6(pStmt)==SQLITE_ROW
     && (nLeaf = FUNC3(pStmt, 0))>0
    ){
      sqlite3_int64 sz;
      nIdx = FUNC3(pStmt, 5);
      FUNC1("For level %d:\n", i);
      FUNC1("  Number of indexes...................... %9d\n", nIdx);
      FUNC1("  Number of leaf segments................ %9d\n", nLeaf);
      if( nIdx>1 ){
        FUNC1("  Average leaf segments per index........ %11.1f\n",
               (double)nLeaf/(double)nIdx);
      }
      FUNC1("  Total size of all leaf segments........ %9lld\n",
             (sz = FUNC4(pStmt, 1)));
      FUNC1("  Average size of leaf segments.......... %11.1f\n",
             FUNC2(pStmt, 2));
      if( nIdx>1 ){
        FUNC1("  Average leaf segment size per index.... %11.1f\n",
               (double)sz/(double)nIdx);
      }
      FUNC1("  Maximum leaf segment size.............. %9lld\n",
             FUNC4(pStmt, 3));
      n = FUNC3(pStmt, 4);
      FUNC1("  Leaf segments larger than %5d bytes.. %9d   %5.2f%%\n",
             pgsz-45, n, n*100.0/nLeaf);
    }
    FUNC5(pStmt);
  }
}