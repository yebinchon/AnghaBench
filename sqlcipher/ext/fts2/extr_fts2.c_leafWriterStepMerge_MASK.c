#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_10__ {int nData; char* pData; } ;
struct TYPE_9__ {int nTermDistinct; TYPE_6__ data; } ;
typedef  TYPE_1__ LeafWriter ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  DL_DEFAULT ; 
 int LEAF_MAX ; 
 int SQLITE_OK ; 
 int STANDALONE_MIN ; 
 int VARINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (TYPE_1__*,char const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int FUNC12 (char*,int) ; 

__attribute__((used)) static int FUNC13(fulltext_vtab *v, LeafWriter *pWriter,
                               const char *pTerm, int nTerm,
                               DLReader *pReaders, int nReaders){
  char c[VARINT_MAX+VARINT_MAX];
  int iTermData = pWriter->data.nData, iDoclistData;
  int i, nData, n, nActualData, nActual, rc, nTermDistinct;

  FUNC1(pWriter->data.pData, pWriter->data.nData);
  nTermDistinct = FUNC7(pWriter, pTerm, nTerm);

  /* Remember nTermDistinct if opening a new node. */
  if( iTermData==0 ) pWriter->nTermDistinct = nTermDistinct;

  iDoclistData = pWriter->data.nData;

  /* Estimate the length of the merged doclist so we can leave space
  ** to encode it.
  */
  for(i=0, nData=0; i<nReaders; i++){
    nData += FUNC5(&pReaders[i]);
  }
  n = FUNC12(c, nData);
  FUNC3(&pWriter->data, c, n);

  FUNC6(&pWriter->data, pReaders, nReaders);
  FUNC0(DL_DEFAULT,
                       pWriter->data.pData+iDoclistData+n,
                       pWriter->data.nData-iDoclistData-n, NULL);

  /* The actual amount of doclist data at this point could be smaller
  ** than the length we encoded.  Additionally, the space required to
  ** encode this length could be smaller.  For small doclists, this is
  ** not a big deal, we can just use memmove() to adjust things.
  */
  nActualData = pWriter->data.nData-(iDoclistData+n);
  nActual = FUNC12(c, nActualData);
  FUNC2( nActualData<=nData );
  FUNC2( nActual<=n );

  /* If the new doclist is big enough for force a standalone leaf
  ** node, we can immediately flush it inline without doing the
  ** memmove().
  */
  /* TODO(shess) This test matches leafWriterStep(), which does this
  ** test before it knows the cost to varint-encode the term and
  ** doclist lengths.  At some point, change to
  ** pWriter->data.nData-iTermData>STANDALONE_MIN.
  */
  if( nTerm+nActualData>STANDALONE_MIN ){
    /* Push leaf node from before this term. */
    if( iTermData>0 ){
      rc = FUNC9(v, pWriter, 0, iTermData);
      if( rc!=SQLITE_OK ) return rc;

      pWriter->nTermDistinct = nTermDistinct;
    }

    /* Fix the encoded doclist length. */
    iDoclistData += n - nActual;
    FUNC10(pWriter->data.pData+iDoclistData, c, nActual);

    /* Push the standalone leaf node. */
    rc = FUNC8(v, pWriter, pTerm, nTerm, iDoclistData);
    if( rc!=SQLITE_OK ) return rc;

    /* Leave the node empty. */
    FUNC4(&pWriter->data);

    return rc;
  }

  /* At this point, we know that the doclist was small, so do the
  ** memmove if indicated.
  */
  if( nActual<n ){
    FUNC11(pWriter->data.pData+iDoclistData+nActual,
            pWriter->data.pData+iDoclistData+n,
            pWriter->data.nData-(iDoclistData+n));
    pWriter->data.nData -= n-nActual;
  }

  /* Replace written length with actual length. */
  FUNC10(pWriter->data.pData+iDoclistData, c, nActual);

  /* If the node is too large, break things up. */
  /* TODO(shess) This test matches leafWriterStep(), which does this
  ** test before it knows the cost to varint-encode the term and
  ** doclist lengths.  At some point, change to
  ** pWriter->data.nData>LEAF_MAX.
  */
  if( iTermData+nTerm+nActualData>LEAF_MAX ){
    /* Flush out the leading data as a node */
    rc = FUNC9(v, pWriter, 0, iTermData);
    if( rc!=SQLITE_OK ) return rc;

    pWriter->nTermDistinct = nTermDistinct;

    /* Rebuild header using the current term */
    n = FUNC12(pWriter->data.pData, 0);
    n += FUNC12(pWriter->data.pData+n, nTerm);
    FUNC10(pWriter->data.pData+n, pTerm, nTerm);
    n += nTerm;

    /* There should always be room, because the previous encoding
    ** included all data necessary to construct the term.
    */
    FUNC2( n<iDoclistData );
    /* So long as STANDALONE_MIN is half or less of LEAF_MAX, the
    ** following memcpy() is safe (as opposed to needing a memmove).
    */
    FUNC2( 2*STANDALONE_MIN<=LEAF_MAX );
    FUNC2( n+pWriter->data.nData-iDoclistData<iDoclistData );
    FUNC10(pWriter->data.pData+n,
           pWriter->data.pData+iDoclistData,
           pWriter->data.nData-iDoclistData);
    pWriter->data.nData -= iDoclistData-n;
  }
  FUNC1(pWriter->data.pData, pWriter->data.nData);

  return SQLITE_OK;
}