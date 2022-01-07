
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_10__ {int nData; char* pData; } ;
struct TYPE_9__ {int nTermDistinct; TYPE_6__ data; } ;
typedef TYPE_1__ LeafWriter ;
typedef int DLReader ;


 int ASSERT_VALID_DOCLIST (int ,char*,int,int *) ;
 int ASSERT_VALID_LEAF_NODE (char*,int) ;
 int DL_DEFAULT ;
 int LEAF_MAX ;
 int SQLITE_OK ;
 int STANDALONE_MIN ;
 int VARINT_MAX ;
 int assert (int) ;
 int dataBufferAppend (TYPE_6__*,char*,int) ;
 int dataBufferReset (TYPE_6__*) ;
 scalar_t__ dlrAllDataBytes (int *) ;
 int docListMerge (TYPE_6__*,int *,int) ;
 int leafWriterEncodeTerm (TYPE_1__*,char const*,int) ;
 int leafWriterInlineFlush (int *,TYPE_1__*,char const*,int,int) ;
 int leafWriterInternalFlush (int *,TYPE_1__*,int ,int) ;
 int memcpy (char*,char const*,int) ;
 int memmove (char*,char*,int) ;
 int putVarint (char*,int) ;

__attribute__((used)) static int leafWriterStepMerge(fulltext_vtab *v, LeafWriter *pWriter,
                               const char *pTerm, int nTerm,
                               DLReader *pReaders, int nReaders){
  char c[VARINT_MAX+VARINT_MAX];
  int iTermData = pWriter->data.nData, iDoclistData;
  int i, nData, n, nActualData, nActual, rc, nTermDistinct;

  ASSERT_VALID_LEAF_NODE(pWriter->data.pData, pWriter->data.nData);
  nTermDistinct = leafWriterEncodeTerm(pWriter, pTerm, nTerm);


  if( iTermData==0 ) pWriter->nTermDistinct = nTermDistinct;

  iDoclistData = pWriter->data.nData;




  for(i=0, nData=0; i<nReaders; i++){
    nData += dlrAllDataBytes(&pReaders[i]);
  }
  n = putVarint(c, nData);
  dataBufferAppend(&pWriter->data, c, n);

  docListMerge(&pWriter->data, pReaders, nReaders);
  ASSERT_VALID_DOCLIST(DL_DEFAULT,
                       pWriter->data.pData+iDoclistData+n,
                       pWriter->data.nData-iDoclistData-n, ((void*)0));






  nActualData = pWriter->data.nData-(iDoclistData+n);
  nActual = putVarint(c, nActualData);
  assert( nActualData<=nData );
  assert( nActual<=n );
  if( nTerm+nActualData>STANDALONE_MIN ){

    if( iTermData>0 ){
      rc = leafWriterInternalFlush(v, pWriter, 0, iTermData);
      if( rc!=SQLITE_OK ) return rc;

      pWriter->nTermDistinct = nTermDistinct;
    }


    iDoclistData += n - nActual;
    memcpy(pWriter->data.pData+iDoclistData, c, nActual);


    rc = leafWriterInlineFlush(v, pWriter, pTerm, nTerm, iDoclistData);
    if( rc!=SQLITE_OK ) return rc;


    dataBufferReset(&pWriter->data);

    return rc;
  }




  if( nActual<n ){
    memmove(pWriter->data.pData+iDoclistData+nActual,
            pWriter->data.pData+iDoclistData+n,
            pWriter->data.nData-(iDoclistData+n));
    pWriter->data.nData -= n-nActual;
  }


  memcpy(pWriter->data.pData+iDoclistData, c, nActual);







  if( iTermData+nTerm+nActualData>LEAF_MAX ){

    rc = leafWriterInternalFlush(v, pWriter, 0, iTermData);
    if( rc!=SQLITE_OK ) return rc;

    pWriter->nTermDistinct = nTermDistinct;


    n = putVarint(pWriter->data.pData, 0);
    n += putVarint(pWriter->data.pData+n, nTerm);
    memcpy(pWriter->data.pData+n, pTerm, nTerm);
    n += nTerm;




    assert( n<iDoclistData );



    assert( 2*STANDALONE_MIN<=LEAF_MAX );
    assert( n+pWriter->data.nData-iDoclistData<iDoclistData );
    memcpy(pWriter->data.pData+n,
           pWriter->data.pData+iDoclistData,
           pWriter->data.nData-iDoclistData);
    pWriter->data.nData -= iDoclistData-n;
  }
  ASSERT_VALID_LEAF_NODE(pWriter->data.pData, pWriter->data.nData);

  return SQLITE_OK;
}
