
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fulltext_vtab ;
typedef int LeafWriter ;
typedef int DLReader ;


 int DL_DEFAULT ;
 int dlrDestroy (int *) ;
 int dlrInit (int *,int ,char const*,int) ;
 int leafWriterStepMerge (int *,int *,char const*,int,int *,int) ;

__attribute__((used)) static int leafWriterStep(fulltext_vtab *v, LeafWriter *pWriter,
                          const char *pTerm, int nTerm,
                          const char *pData, int nData){
  int rc;
  DLReader reader;

  dlrInit(&reader, DL_DEFAULT, pData, nData);
  rc = leafWriterStepMerge(v, pWriter, pTerm, nTerm, &reader, 1);
  dlrDestroy(&reader);

  return rc;
}
