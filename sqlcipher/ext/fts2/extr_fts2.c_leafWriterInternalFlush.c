
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int fulltext_vtab ;
struct TYPE_4__ {int nData; char* pData; } ;
struct TYPE_5__ {int nTermDistinct; int has_parent; scalar_t__ iEndBlockid; scalar_t__ iStartBlockid; int parentWriter; TYPE_1__ data; } ;
typedef TYPE_2__ LeafWriter ;


 int ASSERT_VALID_LEAF_NODE (char*,int) ;
 int SQLITE_OK ;
 int assert (int) ;
 int block_insert (int *,char*,int,scalar_t__*) ;
 int getVarint32 (char*,int*) ;
 int interiorWriterAppend (int *,char const*,int,scalar_t__) ;
 int interiorWriterInit (int,char const*,int,scalar_t__,int *) ;

__attribute__((used)) static int leafWriterInternalFlush(fulltext_vtab *v, LeafWriter *pWriter,
                                   int iData, int nData){
  sqlite_int64 iBlockid = 0;
  const char *pStartingTerm;
  int nStartingTerm, rc, n;




  assert( nData>2 );
  assert( iData>=0 );
  assert( iData+nData<=pWriter->data.nData );
  ASSERT_VALID_LEAF_NODE(pWriter->data.pData+iData, nData);

  rc = block_insert(v, pWriter->data.pData+iData, nData, &iBlockid);
  if( rc!=SQLITE_OK ) return rc;
  assert( iBlockid!=0 );




  n = getVarint32(pWriter->data.pData+iData+1, &nStartingTerm);
  pStartingTerm = pWriter->data.pData+iData+1+n;
  assert( pWriter->data.nData>iData+1+n+nStartingTerm );
  assert( pWriter->nTermDistinct>0 );
  assert( pWriter->nTermDistinct<=nStartingTerm );
  nStartingTerm = pWriter->nTermDistinct;

  if( pWriter->has_parent ){
    interiorWriterAppend(&pWriter->parentWriter,
                         pStartingTerm, nStartingTerm, iBlockid);
  }else{
    interiorWriterInit(1, pStartingTerm, nStartingTerm, iBlockid,
                       &pWriter->parentWriter);
    pWriter->has_parent = 1;
  }


  if( pWriter->iEndBlockid==0 ){
    pWriter->iEndBlockid = pWriter->iStartBlockid = iBlockid;
  }else{
    pWriter->iEndBlockid++;
    assert( iBlockid==pWriter->iEndBlockid );
  }

  return SQLITE_OK;
}
