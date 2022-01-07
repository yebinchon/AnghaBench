
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_10__ {scalar_t__ nPendingData; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_11__ {scalar_t__ nData; int pData; } ;
typedef TYPE_2__ DataBuffer ;
typedef int DLReader ;


 int DL_DEFAULT ;
 int SQLITE_OK ;
 int assert (int) ;
 int dataBufferDestroy (TYPE_2__*) ;
 int dataBufferInit (TYPE_2__*,scalar_t__) ;
 int dlrDestroy (int *) ;
 int dlrInit (int *,int ,int ,scalar_t__) ;
 int docListMerge (TYPE_2__*,int *,int) ;
 int loadSegmentInt (TYPE_1__*,char const*,int,int ,char const*,int,int,TYPE_2__*) ;

__attribute__((used)) static int loadSegment(fulltext_vtab *v, const char *pData, int nData,
                       sqlite_int64 iLeavesEnd,
                       const char *pTerm, int nTerm, int isPrefix,
                       DataBuffer *out){
  DataBuffer result;
  int rc;

  assert( nData>1 );


  assert( v->nPendingData<0 );

  dataBufferInit(&result, 0);
  rc = loadSegmentInt(v, pData, nData, iLeavesEnd,
                      pTerm, nTerm, isPrefix, &result);
  if( rc==SQLITE_OK && result.nData>0 ){
    if( out->nData==0 ){
      DataBuffer tmp = *out;
      *out = result;
      result = tmp;
    }else{
      DataBuffer merged;
      DLReader readers[2];

      dlrInit(&readers[0], DL_DEFAULT, out->pData, out->nData);
      dlrInit(&readers[1], DL_DEFAULT, result.pData, result.nData);
      dataBufferInit(&merged, out->nData+result.nData);
      docListMerge(&merged, readers, 2);
      dataBufferDestroy(out);
      *out = merged;
      dlrDestroy(&readers[0]);
      dlrDestroy(&readers[1]);
    }
  }
  dataBufferDestroy(&result);
  return rc;
}
