
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_7__ {scalar_t__ nData; int pData; } ;
typedef int OptLeavesReader ;
typedef int LeafWriter ;
typedef TYPE_1__ DataBuffer ;
typedef int DLReader ;


 int DL_DEFAULT ;
 int LEAF_MAX ;
 int MERGE_COUNT ;
 int SQLITE_OK ;
 int assert (int) ;
 int dataBufferDestroy (TYPE_1__*) ;
 int dataBufferInit (TYPE_1__*,int ) ;
 int dataBufferReset (TYPE_1__*) ;
 int dlrDestroy (int *) ;
 int dlrInit (int *,int ,int ,scalar_t__) ;
 int docListMerge (TYPE_1__*,int *,int) ;
 int docListTrim (int ,int ,scalar_t__,int,int ,TYPE_1__*) ;
 int leafWriterStep (int *,int *,int ,int ,int ,scalar_t__) ;
 int optLeavesReaderAtEnd (int *) ;
 int optLeavesReaderData (int *) ;
 scalar_t__ optLeavesReaderDataBytes (int *) ;
 int optLeavesReaderReorder (int *,int) ;
 int optLeavesReaderStep (int *,int *) ;
 int optLeavesReaderTerm (int *) ;
 int optLeavesReaderTermBytes (int *) ;
 scalar_t__ optLeavesReaderTermCmp (int *,int *) ;

__attribute__((used)) static int optimizeInternal(fulltext_vtab *v,
                            OptLeavesReader *readers, int nReaders,
                            LeafWriter *pWriter){
  int i, rc = SQLITE_OK;
  DataBuffer doclist, merged, tmp;


  i = nReaders;
  while( i-- > 0 ){
    optLeavesReaderReorder(&readers[i], nReaders-i);
  }

  dataBufferInit(&doclist, LEAF_MAX);
  dataBufferInit(&merged, LEAF_MAX);




  while( !optLeavesReaderAtEnd(&readers[0]) ){


    for(i=1; i<nReaders && !optLeavesReaderAtEnd(&readers[i]); i++){
      if( 0!=optLeavesReaderTermCmp(&readers[0], &readers[i]) ) break;
    }


    if( i==1 ){

      dataBufferReset(&merged);
      docListTrim(DL_DEFAULT,
                  optLeavesReaderData(&readers[0]),
                  optLeavesReaderDataBytes(&readers[0]),
                  -1, DL_DEFAULT, &merged);
    }else{
      DLReader dlReaders[MERGE_COUNT];
      int iReader, nReaders;




      dlrInit(&dlReaders[0], DL_DEFAULT,
              optLeavesReaderData(&readers[0]),
              optLeavesReaderDataBytes(&readers[0]));
      iReader = 1;

      assert( iReader<i );
      while( iReader<i ){

        for( nReaders=1; iReader<i && nReaders<MERGE_COUNT;
             iReader++, nReaders++ ){
          dlrInit(&dlReaders[nReaders], DL_DEFAULT,
                  optLeavesReaderData(&readers[iReader]),
                  optLeavesReaderDataBytes(&readers[iReader]));
        }


        dataBufferReset(&merged);
        docListMerge(&merged, dlReaders, nReaders);
        tmp = merged;
        merged = doclist;
        doclist = tmp;

        while( nReaders-- > 0 ){
          dlrDestroy(&dlReaders[nReaders]);
        }


        dlrInit(&dlReaders[0], DL_DEFAULT, doclist.pData, doclist.nData);
      }


      dlrDestroy(&dlReaders[0]);


      dataBufferReset(&merged);
      docListTrim(DL_DEFAULT, doclist.pData, doclist.nData,
                  -1, DL_DEFAULT, &merged);
    }


    if( merged.nData>0 ){
      rc = leafWriterStep(v, pWriter,
                          optLeavesReaderTerm(&readers[0]),
                          optLeavesReaderTermBytes(&readers[0]),
                          merged.pData, merged.nData);
      if( rc!=SQLITE_OK ) goto err;
    }


    while( i-- > 0 ){
      rc = optLeavesReaderStep(v, &readers[i]);
      if( rc!=SQLITE_OK ) goto err;

      optLeavesReaderReorder(&readers[i], nReaders-i);
    }
  }

 err:
  dataBufferDestroy(&doclist);
  dataBufferDestroy(&merged);
  return rc;
}
