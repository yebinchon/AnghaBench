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
typedef  int /*<<< orphan*/  lrs ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  LeavesReader ;
typedef  int /*<<< orphan*/  LeafWriter ;

/* Variables and functions */
 int MERGE_COUNT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(fulltext_vtab *v, int iLevel){
  LeafWriter writer;
  LeavesReader lrs[MERGE_COUNT];
  int i, rc, idx = 0;

  /* Determine the next available segment index at the next level,
  ** merging as necessary.
  */
  rc = FUNC12(v, iLevel+1, &idx);
  if( rc!=SQLITE_OK ) return rc;

  /* TODO(shess) This assumes that we'll always see exactly
  ** MERGE_COUNT segments to merge at a given level.  That will be
  ** broken if we allow the developer to request preemptive or
  ** deferred merging.
  */
  FUNC11(&lrs, '\0', sizeof(lrs));
  rc = FUNC9(v, iLevel, lrs, &i);
  if( rc!=SQLITE_OK ) return rc;
  FUNC0( i==MERGE_COUNT );

  FUNC3(iLevel+1, idx, &writer);

  /* Since leavesReaderReorder() pushes readers at eof to the end,
  ** when the first reader is empty, all will be empty.
  */
  while( !FUNC4(lrs) ){
    /* Figure out how many readers share their next term. */
    for(i=1; i<MERGE_COUNT && !FUNC4(lrs+i); i++){
      if( 0!=FUNC8(lrs, lrs+i) ) break;
    }

    rc = FUNC10(v, lrs, i, &writer);
    if( rc!=SQLITE_OK ) goto err;

    /* Step forward those that were merged. */
    while( i-->0 ){
      rc = FUNC7(v, lrs+i);
      if( rc!=SQLITE_OK ) goto err;

      /* Reorder by term, then by age. */
      FUNC6(lrs+i, MERGE_COUNT-i);
    }
  }

  for(i=0; i<MERGE_COUNT; i++){
    FUNC5(&lrs[i]);
  }

  rc = FUNC2(v, &writer);
  FUNC1(&writer);
  if( rc!=SQLITE_OK ) return rc;

  /* Delete the merged segment data. */
  return FUNC13(v, iLevel);

 err:
  for(i=0; i<MERGE_COUNT; i++){
    FUNC5(&lrs[i]);
  }
  FUNC1(&writer);
  return rc;
}