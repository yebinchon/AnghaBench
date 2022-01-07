
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lrs ;
typedef int fulltext_vtab ;
typedef int LeavesReader ;
typedef int LeafWriter ;


 int MERGE_COUNT ;
 int SQLITE_OK ;
 int assert (int) ;
 int leafWriterDestroy (int *) ;
 int leafWriterFinalize (int *,int *) ;
 int leafWriterInit (int,int,int *) ;
 int leavesReaderAtEnd (int *) ;
 int leavesReaderDestroy (int *) ;
 int leavesReaderReorder (int *,int) ;
 int leavesReaderStep (int *,int *) ;
 scalar_t__ leavesReaderTermCmp (int *,int *) ;
 int leavesReadersInit (int *,int,int *,int*) ;
 int leavesReadersMerge (int *,int *,int,int *) ;
 int memset (int **,char,int) ;
 int segdirNextIndex (int *,int,int*) ;
 int segdir_delete (int *,int) ;

__attribute__((used)) static int segmentMerge(fulltext_vtab *v, int iLevel){
  LeafWriter writer;
  LeavesReader lrs[MERGE_COUNT];
  int i, rc, idx = 0;




  rc = segdirNextIndex(v, iLevel+1, &idx);
  if( rc!=SQLITE_OK ) return rc;






  memset(&lrs, '\0', sizeof(lrs));
  rc = leavesReadersInit(v, iLevel, lrs, &i);
  if( rc!=SQLITE_OK ) return rc;
  assert( i==MERGE_COUNT );

  leafWriterInit(iLevel+1, idx, &writer);




  while( !leavesReaderAtEnd(lrs) ){

    for(i=1; i<MERGE_COUNT && !leavesReaderAtEnd(lrs+i); i++){
      if( 0!=leavesReaderTermCmp(lrs, lrs+i) ) break;
    }

    rc = leavesReadersMerge(v, lrs, i, &writer);
    if( rc!=SQLITE_OK ) goto err;


    while( i-->0 ){
      rc = leavesReaderStep(v, lrs+i);
      if( rc!=SQLITE_OK ) goto err;


      leavesReaderReorder(lrs+i, MERGE_COUNT-i);
    }
  }

  for(i=0; i<MERGE_COUNT; i++){
    leavesReaderDestroy(&lrs[i]);
  }

  rc = leafWriterFinalize(v, &writer);
  leafWriterDestroy(&writer);
  if( rc!=SQLITE_OK ) return rc;


  return segdir_delete(v, iLevel);

 err:
  for(i=0; i<MERGE_COUNT; i++){
    leavesReaderDestroy(&lrs[i]);
  }
  leafWriterDestroy(&writer);
  return rc;
}
