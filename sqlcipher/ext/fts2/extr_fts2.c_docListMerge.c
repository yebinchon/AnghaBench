
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_12__ {scalar_t__ iType; } ;
struct TYPE_11__ {int idx; TYPE_2__* pReader; } ;
typedef TYPE_1__ OrderedDLReader ;
typedef int DataBuffer ;
typedef int DLWriter ;
typedef TYPE_2__ DLReader ;


 int MERGE_COUNT ;
 int assert (int) ;
 int dataBufferAppend (int *,char const*,scalar_t__) ;
 int dataBufferExpand (int *,int) ;
 scalar_t__ dlrAllDataBytes (TYPE_2__*) ;
 int dlrAtEnd (TYPE_2__*) ;
 char const* dlrDocData (TYPE_2__*) ;
 int dlrDocDataBytes (TYPE_2__*) ;
 scalar_t__ dlrDocid (TYPE_2__*) ;
 int dlrStep (TYPE_2__*) ;
 int dlwAppend (int *,char const*,int,scalar_t__,scalar_t__) ;
 int dlwDestroy (int *) ;
 int dlwInit (int *,scalar_t__,int *) ;
 int orderedDLReaderReorder (TYPE_1__*,int) ;

__attribute__((used)) static void docListMerge(DataBuffer *out,
                         DLReader *pReaders, int nReaders){
  OrderedDLReader readers[MERGE_COUNT];
  DLWriter writer;
  int i, n;
  const char *pStart = 0;
  int nStart = 0;
  sqlite_int64 iFirstDocid = 0, iLastDocid = 0;

  assert( nReaders>0 );
  if( nReaders==1 ){
    dataBufferAppend(out, dlrDocData(pReaders), dlrAllDataBytes(pReaders));
    return;
  }

  assert( nReaders<=MERGE_COUNT );
  n = 0;
  for(i=0; i<nReaders; i++){
    assert( pReaders[i].iType==pReaders[0].iType );
    readers[i].pReader = pReaders+i;
    readers[i].idx = i;
    n += dlrAllDataBytes(&pReaders[i]);
  }



  dataBufferExpand(out, n);


  while( i-->0 ){
    orderedDLReaderReorder(readers+i, nReaders-i);
  }

  dlwInit(&writer, pReaders[0].iType, out);
  while( !dlrAtEnd(readers[0].pReader) ){
    sqlite_int64 iDocid = dlrDocid(readers[0].pReader);





    if( dlrDocData(readers[0].pReader)==pStart+nStart ){
      nStart += dlrDocDataBytes(readers[0].pReader);
    }else{
      if( pStart!=0 ){
        dlwAppend(&writer, pStart, nStart, iFirstDocid, iLastDocid);
      }
      pStart = dlrDocData(readers[0].pReader);
      nStart = dlrDocDataBytes(readers[0].pReader);
      iFirstDocid = iDocid;
    }
    iLastDocid = iDocid;
    dlrStep(readers[0].pReader);


    for(i=1; i<nReaders &&
             !dlrAtEnd(readers[i].pReader) &&
             dlrDocid(readers[i].pReader)==iDocid; i++){
      dlrStep(readers[i].pReader);
    }


    while( i-->0 ){
      orderedDLReaderReorder(readers+i, nReaders-i);
    }
  }


  if( nStart>0 ) dlwAppend(&writer, pStart, nStart, iFirstDocid, iLastDocid);
  dlwDestroy(&writer);
}
