
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fulltext_vtab ;
typedef int LeavesReader ;
typedef int LeafWriter ;
typedef int DLReader ;


 int DL_DEFAULT ;
 int MERGE_COUNT ;
 int assert (int) ;
 int dlrInit (int *,int ,int ,int ) ;
 int leafWriterStepMerge (int *,int *,char const*,int,int *,int) ;
 int leavesReaderData (int *) ;
 int leavesReaderDataBytes (int *) ;
 char* leavesReaderTerm (int *) ;
 int leavesReaderTermBytes (int *) ;

__attribute__((used)) static int leavesReadersMerge(fulltext_vtab *v,
                              LeavesReader *pReaders, int nReaders,
                              LeafWriter *pWriter){
  DLReader dlReaders[MERGE_COUNT];
  const char *pTerm = leavesReaderTerm(pReaders);
  int i, nTerm = leavesReaderTermBytes(pReaders);

  assert( nReaders<=MERGE_COUNT );

  for(i=0; i<nReaders; i++){
    dlrInit(&dlReaders[i], DL_DEFAULT,
            leavesReaderData(pReaders+i),
            leavesReaderDataBytes(pReaders+i));
  }

  return leafWriterStepMerge(v, pWriter, pTerm, nTerm, dlReaders, nReaders);
}
