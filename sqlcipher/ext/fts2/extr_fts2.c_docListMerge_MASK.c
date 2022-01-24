#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
struct TYPE_12__ {scalar_t__ iType; } ;
struct TYPE_11__ {int idx; TYPE_2__* pReader; } ;
typedef  TYPE_1__ OrderedDLReader ;
typedef  int /*<<< orphan*/  DataBuffer ;
typedef  int /*<<< orphan*/  DLWriter ;
typedef  TYPE_2__ DLReader ;

/* Variables and functions */
 int MERGE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 char const* FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC13(DataBuffer *out,
                         DLReader *pReaders, int nReaders){
  OrderedDLReader readers[MERGE_COUNT];
  DLWriter writer;
  int i, n;
  const char *pStart = 0;
  int nStart = 0;
  sqlite_int64 iFirstDocid = 0, iLastDocid = 0;

  FUNC0( nReaders>0 );
  if( nReaders==1 ){
    FUNC1(out, FUNC5(pReaders), FUNC3(pReaders));
    return;
  }

  FUNC0( nReaders<=MERGE_COUNT );
  n = 0;
  for(i=0; i<nReaders; i++){
    FUNC0( pReaders[i].iType==pReaders[0].iType );
    readers[i].pReader = pReaders+i;
    readers[i].idx = i;
    n += FUNC3(&pReaders[i]);
  }
  /* Conservatively size output to sum of inputs.  Output should end
  ** up strictly smaller than input.
  */
  FUNC2(out, n);

  /* Get the readers into sorted order. */
  while( i-->0 ){
    FUNC12(readers+i, nReaders-i);
  }

  FUNC11(&writer, pReaders[0].iType, out);
  while( !FUNC4(readers[0].pReader) ){
    sqlite_int64 iDocid = FUNC7(readers[0].pReader);

    /* If this is a continuation of the current buffer to copy, extend
    ** that buffer.  memcpy() seems to be more efficient if it has a
    ** lots of data to copy.
    */
    if( FUNC5(readers[0].pReader)==pStart+nStart ){
      nStart += FUNC6(readers[0].pReader);
    }else{
      if( pStart!=0 ){
        FUNC9(&writer, pStart, nStart, iFirstDocid, iLastDocid);
      }
      pStart = FUNC5(readers[0].pReader);
      nStart = FUNC6(readers[0].pReader);
      iFirstDocid = iDocid;
    }
    iLastDocid = iDocid;
    FUNC8(readers[0].pReader);

    /* Drop all of the older elements with the same docid. */
    for(i=1; i<nReaders &&
             !FUNC4(readers[i].pReader) &&
             FUNC7(readers[i].pReader)==iDocid; i++){
      FUNC8(readers[i].pReader);
    }

    /* Get the readers back into order. */
    while( i-->0 ){
      FUNC12(readers+i, nReaders-i);
    }
  }

  /* Copy over any remaining elements. */
  if( nStart>0 ) FUNC9(&writer, pStart, nStart, iFirstDocid, iLastDocid);
  FUNC10(&writer);
}