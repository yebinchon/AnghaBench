
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_21__ {int nData; char const* pData; int nCapacity; } ;
struct TYPE_20__ {int leafReader; } ;
typedef TYPE_1__ LeavesReader ;
typedef TYPE_2__ DataBuffer ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int dataBufferDestroy (TYPE_2__*) ;
 int dataBufferInit (TYPE_2__*,int ) ;
 int dataBufferReplace (TYPE_2__*,char const*,int) ;
 int dataBufferReset (TYPE_2__*) ;
 int dataBufferSwap (TYPE_2__*,TYPE_2__*) ;
 int docListAccumulateUnion (TYPE_2__*,char const*,int) ;
 int leafReaderTermCmp (int *,char const*,int,int) ;
 int leavesReaderAtEnd (TYPE_1__*) ;
 char* leavesReaderData (TYPE_1__*) ;
 int leavesReaderDataBytes (TYPE_1__*) ;
 int leavesReaderStep (int *,TYPE_1__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int sqlite3_free (TYPE_2__*) ;
 TYPE_2__* sqlite3_malloc (int) ;

__attribute__((used)) static int loadSegmentLeavesInt(fulltext_vtab *v, LeavesReader *pReader,
                                const char *pTerm, int nTerm, int isPrefix,
                                DataBuffer *out){






  DataBuffer *pBuffers = ((void*)0);
  int nBuffers = 0, nMaxBuffers = 0, rc;

  assert( nTerm>0 );

  for(rc=SQLITE_OK; rc==SQLITE_OK && !leavesReaderAtEnd(pReader);
      rc=leavesReaderStep(v, pReader)){





    int c = leafReaderTermCmp(&pReader->leafReader, pTerm, nTerm, isPrefix);
    if( c>0 ) break;
    if( c==0 ){
      const char *pData = leavesReaderData(pReader);
      int iBuffer, nData = leavesReaderDataBytes(pReader);


      for(iBuffer=0; iBuffer<nBuffers; ++iBuffer){
        if( 0==pBuffers[iBuffer].nData ) break;
      }


      if( iBuffer==nBuffers ){
        if( nBuffers==nMaxBuffers ){
          DataBuffer *p;
          nMaxBuffers += 20;


          p = sqlite3_malloc(nMaxBuffers*sizeof(*pBuffers));
          if( p==((void*)0) ){
            rc = SQLITE_NOMEM;
            break;
          }

          if( nBuffers>0 ){
            assert(pBuffers!=((void*)0));
            memcpy(p, pBuffers, nBuffers*sizeof(*pBuffers));
            sqlite3_free(pBuffers);
          }
          pBuffers = p;
        }
        dataBufferInit(&(pBuffers[nBuffers]), 0);
        nBuffers++;
      }


      assert(iBuffer<nBuffers && pBuffers[iBuffer].nData==0);


      if( iBuffer==0 ){
        dataBufferReplace(&(pBuffers[0]), pData, nData);
      }else{

        DataBuffer *pAcc = &(pBuffers[iBuffer]);
        DataBuffer *p = &(pBuffers[0]);




        dataBufferSwap(p, pAcc);
        docListAccumulateUnion(pAcc, pData, nData);


        for(++p; p<pAcc; ++p){
          docListAccumulateUnion(pAcc, p->pData, p->nData);




          if( p->nCapacity<1024 ){
            dataBufferReset(p);
          }else{
            dataBufferDestroy(p);
            dataBufferInit(p, 0);
          }
        }
      }
    }
  }



  if( rc==SQLITE_OK && nBuffers>0 ){
    int iBuffer;
    for(iBuffer=0; iBuffer<nBuffers; ++iBuffer){
      if( pBuffers[iBuffer].nData>0 ){
        if( out->nData==0 ){
          dataBufferSwap(out, &(pBuffers[iBuffer]));
        }else{
          docListAccumulateUnion(out, pBuffers[iBuffer].pData,
                                 pBuffers[iBuffer].nData);
        }
      }
    }
  }

  while( nBuffers-- ){
    dataBufferDestroy(&(pBuffers[nBuffers]));
  }
  if( pBuffers!=((void*)0) ) sqlite3_free(pBuffers);

  return rc;
}
