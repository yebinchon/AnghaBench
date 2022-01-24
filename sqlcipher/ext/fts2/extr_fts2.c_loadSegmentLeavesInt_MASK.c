#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_21__ {int nData; char const* pData; int nCapacity; } ;
struct TYPE_20__ {int /*<<< orphan*/  leafReader; } ;
typedef  TYPE_1__ LeavesReader ;
typedef  TYPE_2__ DataBuffer ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 char* FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 TYPE_2__* FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(fulltext_vtab *v, LeavesReader *pReader,
                                const char *pTerm, int nTerm, int isPrefix,
                                DataBuffer *out){
  /* doclist data is accumulated into pBuffers similar to how one does
  ** increment in binary arithmetic.  If index 0 is empty, the data is
  ** stored there.  If there is data there, it is merged and the
  ** results carried into position 1, with further merge-and-carry
  ** until an empty position is found.
  */
  DataBuffer *pBuffers = NULL;
  int nBuffers = 0, nMaxBuffers = 0, rc;

  FUNC0( nTerm>0 );

  for(rc=SQLITE_OK; rc==SQLITE_OK && !FUNC8(pReader);
      rc=FUNC11(v, pReader)){
    /* TODO(shess) Really want leavesReaderTermCmp(), but that name is
    ** already taken to compare the terms of two LeavesReaders.  Think
    ** on a better name.  [Meanwhile, break encapsulation rather than
    ** use a confusing name.]
    */
    int c = FUNC7(&pReader->leafReader, pTerm, nTerm, isPrefix);
    if( c>0 ) break;      /* Past any possible matches. */
    if( c==0 ){
      const char *pData = FUNC9(pReader);
      int iBuffer, nData = FUNC10(pReader);

      /* Find the first empty buffer. */
      for(iBuffer=0; iBuffer<nBuffers; ++iBuffer){
        if( 0==pBuffers[iBuffer].nData ) break;
      }

      /* Out of buffers, add an empty one. */
      if( iBuffer==nBuffers ){
        if( nBuffers==nMaxBuffers ){
          DataBuffer *p;
          nMaxBuffers += 20;

          /* Manual realloc so we can handle NULL appropriately. */
          p = FUNC14(nMaxBuffers*sizeof(*pBuffers));
          if( p==NULL ){
            rc = SQLITE_NOMEM;
            break;
          }

          if( nBuffers>0 ){
            FUNC0(pBuffers!=NULL);
            FUNC12(p, pBuffers, nBuffers*sizeof(*pBuffers));
            FUNC13(pBuffers);
          }
          pBuffers = p;
        }
        FUNC2(&(pBuffers[nBuffers]), 0);
        nBuffers++;
      }

      /* At this point, must have an empty at iBuffer. */
      FUNC0(iBuffer<nBuffers && pBuffers[iBuffer].nData==0);

      /* If empty was first buffer, no need for merge logic. */
      if( iBuffer==0 ){
        FUNC3(&(pBuffers[0]), pData, nData);
      }else{
        /* pAcc is the empty buffer the merged data will end up in. */
        DataBuffer *pAcc = &(pBuffers[iBuffer]);
        DataBuffer *p = &(pBuffers[0]);

        /* Handle position 0 specially to avoid need to prime pAcc
        ** with pData/nData.
        */
        FUNC5(p, pAcc);
        FUNC6(pAcc, pData, nData);

        /* Accumulate remaining doclists into pAcc. */
        for(++p; p<pAcc; ++p){
          FUNC6(pAcc, p->pData, p->nData);

          /* dataBufferReset() could allow a large doclist to blow up
          ** our memory requirements.
          */
          if( p->nCapacity<1024 ){
            FUNC4(p);
          }else{
            FUNC1(p);
            FUNC2(p, 0);
          }
        }
      }
    }
  }

  /* Union all the doclists together into *out. */
  /* TODO(shess) What if *out is big?  Sigh. */
  if( rc==SQLITE_OK && nBuffers>0 ){
    int iBuffer;
    for(iBuffer=0; iBuffer<nBuffers; ++iBuffer){
      if( pBuffers[iBuffer].nData>0 ){
        if( out->nData==0 ){
          FUNC5(out, &(pBuffers[iBuffer]));
        }else{
          FUNC6(out, pBuffers[iBuffer].pData,
                                 pBuffers[iBuffer].nData);
        }
      }
    }
  }

  while( nBuffers-- ){
    FUNC1(&(pBuffers[nBuffers]));
  }
  if( pBuffers!=NULL ) FUNC13(pBuffers);

  return rc;
}