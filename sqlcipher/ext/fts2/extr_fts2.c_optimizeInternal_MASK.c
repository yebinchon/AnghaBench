#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_7__ {scalar_t__ nData; int /*<<< orphan*/  pData; } ;
typedef  int /*<<< orphan*/  OptLeavesReader ;
typedef  int /*<<< orphan*/  LeafWriter ;
typedef  TYPE_1__ DataBuffer ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFAULT ; 
 int /*<<< orphan*/  LEAF_MAX ; 
 int MERGE_COUNT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(fulltext_vtab *v,
                            OptLeavesReader *readers, int nReaders,
                            LeafWriter *pWriter){
  int i, rc = SQLITE_OK;
  DataBuffer doclist, merged, tmp;

  /* Order the readers. */
  i = nReaders;
  while( i-- > 0 ){
    FUNC12(&readers[i], nReaders-i);
  }

  FUNC2(&doclist, LEAF_MAX);
  FUNC2(&merged, LEAF_MAX);

  /* Exhausted readers bubble to the end, so when the first reader is
  ** at eof, all are at eof.
  */
  while( !FUNC9(&readers[0]) ){

    /* Figure out how many readers share the next term. */
    for(i=1; i<nReaders && !FUNC9(&readers[i]); i++){
      if( 0!=FUNC16(&readers[0], &readers[i]) ) break;
    }

    /* Special-case for no merge. */
    if( i==1 ){
      /* Trim deletions from the doclist. */
      FUNC3(&merged);
      FUNC7(DL_DEFAULT,
                  FUNC10(&readers[0]),
                  FUNC11(&readers[0]),
                  -1, DL_DEFAULT, &merged);
    }else{
      DLReader dlReaders[MERGE_COUNT];
      int iReader, nReaders;

      /* Prime the pipeline with the first reader's doclist.  After
      ** one pass index 0 will reference the accumulated doclist.
      */
      FUNC5(&dlReaders[0], DL_DEFAULT,
              FUNC10(&readers[0]),
              FUNC11(&readers[0]));
      iReader = 1;

      FUNC0( iReader<i );  /* Must execute the loop at least once. */
      while( iReader<i ){
        /* Merge 16 inputs per pass. */
        for( nReaders=1; iReader<i && nReaders<MERGE_COUNT;
             iReader++, nReaders++ ){
          FUNC5(&dlReaders[nReaders], DL_DEFAULT,
                  FUNC10(&readers[iReader]),
                  FUNC11(&readers[iReader]));
        }

        /* Merge doclists and swap result into accumulator. */
        FUNC3(&merged);
        FUNC6(&merged, dlReaders, nReaders);
        tmp = merged;
        merged = doclist;
        doclist = tmp;

        while( nReaders-- > 0 ){
          FUNC4(&dlReaders[nReaders]);
        }

        /* Accumulated doclist to reader 0 for next pass. */
        FUNC5(&dlReaders[0], DL_DEFAULT, doclist.pData, doclist.nData);
      }

      /* Destroy reader that was left in the pipeline. */
      FUNC4(&dlReaders[0]);

      /* Trim deletions from the doclist. */
      FUNC3(&merged);
      FUNC7(DL_DEFAULT, doclist.pData, doclist.nData,
                  -1, DL_DEFAULT, &merged);
    }

    /* Only pass doclists with hits (skip if all hits deleted). */
    if( merged.nData>0 ){
      rc = FUNC8(v, pWriter,
                          FUNC14(&readers[0]),
                          FUNC15(&readers[0]),
                          merged.pData, merged.nData);
      if( rc!=SQLITE_OK ) goto err;
    }

    /* Step merged readers to next term and reorder. */
    while( i-- > 0 ){
      rc = FUNC13(v, &readers[i]);
      if( rc!=SQLITE_OK ) goto err;

      FUNC12(&readers[i], nReaders-i);
    }
  }

 err:
  FUNC1(&doclist);
  FUNC1(&merged);
  return rc;
}