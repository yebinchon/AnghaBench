#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  readers ;
typedef  int /*<<< orphan*/  pCursor ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  fulltext_cursor ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int segment; int /*<<< orphan*/  reader; } ;
typedef  TYPE_1__ OptLeavesReader ;
typedef  int /*<<< orphan*/  LeafWriter ;

/* Variables and functions */
 int /*<<< orphan*/  SEGDIR_SELECT_ALL_STMT ; 
 scalar_t__ SQLITE_BLOB ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC27(sqlite3_context *pContext,
                         int argc, sqlite3_value **argv){
  fulltext_cursor *pCursor;
  if( argc>1 ){
    FUNC20(pContext, "excess arguments to optimize()",-1);
  }else if( FUNC26(argv[0])!=SQLITE_BLOB ||
            FUNC25(argv[0])!=sizeof(pCursor) ){
    FUNC20(pContext, "illegal first argument to optimize",-1);
  }else{
    fulltext_vtab *v;
    int i, rc, iMaxLevel;
    OptLeavesReader *readers;
    int nReaders;
    LeafWriter writer;
    sqlite3_stmt *s;

    FUNC8(&pCursor, FUNC24(argv[0]), sizeof(pCursor));
    v = FUNC1(pCursor);

    /* Flush any buffered updates before optimizing. */
    rc = FUNC2(v);
    if( rc!=SQLITE_OK ) goto err;

    rc = FUNC10(v, &nReaders, &iMaxLevel);
    if( rc!=SQLITE_OK ) goto err;
    if( nReaders==0 || nReaders==1 ){
      FUNC21(pContext, "Index already optimal", -1,
                          SQLITE_STATIC);
      return;
    }

    rc = FUNC12(v, SEGDIR_SELECT_ALL_STMT, &s);
    if( rc!=SQLITE_OK ) goto err;

    readers = FUNC19(nReaders*sizeof(readers[0]));
    if( readers==NULL ) goto err;

    /* Note that there will already be a segment at this position
    ** until we call segdir_delete() on iMaxLevel.
    */
    FUNC5(iMaxLevel, 0, &writer);

    i = 0;
    while( (rc = FUNC23(s))==SQLITE_ROW ){
      sqlite_int64 iStart = FUNC15(s, 0);
      sqlite_int64 iEnd = FUNC15(s, 1);
      const char *pRootData = FUNC13(s, 2);
      int nRootData = FUNC14(s, 2);

      FUNC0( i<nReaders );
      rc = FUNC7(v, -1, iStart, iEnd, pRootData, nRootData,
                            &readers[i].reader);
      if( rc!=SQLITE_OK ) break;

      readers[i].segment = i;
      i++;
    }

    /* If we managed to successfully read them all, optimize them. */
    if( rc==SQLITE_DONE ){
      FUNC0( i==nReaders );
      rc = FUNC9(v, readers, nReaders, &writer);
    }

    while( i-- > 0 ){
      FUNC6(&readers[i].reader);
    }
    FUNC18(readers);

    /* If we've successfully gotten to here, delete the old segments
    ** and flush the interior structure of the new segment.
    */
    if( rc==SQLITE_OK ){
      for( i=0; i<=iMaxLevel; i++ ){
        rc = FUNC11(v, i);
        if( rc!=SQLITE_OK ) break;
      }

      if( rc==SQLITE_OK ) rc = FUNC4(v, &writer);
    }

    FUNC3(&writer);

    if( rc!=SQLITE_OK ) goto err;

    FUNC21(pContext, "Index optimized", -1, SQLITE_STATIC);
    return;

    /* TODO(shess): Error-handling needs to be improved along the
    ** lines of the dump_ functions.
    */
 err:
    {
      char buf[512];
      FUNC22(sizeof(buf), buf, "Error in optimize: %s",
                       FUNC17(FUNC16(pContext)));
      FUNC20(pContext, buf, -1);
    }
  }
}