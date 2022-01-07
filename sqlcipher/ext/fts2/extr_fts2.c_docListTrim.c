
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLWriter ;
typedef int PLReader ;
typedef int DocListType ;
typedef int DataBuffer ;
typedef int DLWriter ;
typedef int DLReader ;


 int assert (int) ;
 int dlrAtEnd (int *) ;
 int dlrDestroy (int *) ;
 int dlrDocid (int *) ;
 int dlrInit (int *,int ,char const*,int) ;
 int dlrStep (int *) ;
 int dlwDestroy (int *) ;
 int dlwInit (int *,int ,int *) ;
 int plrAtEnd (int *) ;
 int plrColumn (int *) ;
 int plrDestroy (int *) ;
 int plrEndOffset (int *) ;
 int plrInit (int *,int *) ;
 int plrPosition (int *) ;
 int plrStartOffset (int *) ;
 int plrStep (int *) ;
 int plwAdd (int *,int,int ,int ,int ) ;
 int plwDestroy (int *) ;
 int plwInit (int *,int *,int ) ;
 int plwTerminate (int *) ;

__attribute__((used)) static void docListTrim(DocListType iType, const char *pData, int nData,
                        int iColumn, DocListType iOutType, DataBuffer *out){
  DLReader dlReader;
  DLWriter dlWriter;

  assert( iOutType<=iType );

  dlrInit(&dlReader, iType, pData, nData);
  dlwInit(&dlWriter, iOutType, out);

  while( !dlrAtEnd(&dlReader) ){
    PLReader plReader;
    PLWriter plWriter;
    int match = 0;

    plrInit(&plReader, &dlReader);

    while( !plrAtEnd(&plReader) ){
      if( iColumn==-1 || plrColumn(&plReader)==iColumn ){
        if( !match ){
          plwInit(&plWriter, &dlWriter, dlrDocid(&dlReader));
          match = 1;
        }
        plwAdd(&plWriter, plrColumn(&plReader), plrPosition(&plReader),
               plrStartOffset(&plReader), plrEndOffset(&plReader));
      }
      plrStep(&plReader);
    }
    if( match ){
      plwTerminate(&plWriter);
      plwDestroy(&plWriter);
    }

    plrDestroy(&plReader);
    dlrStep(&dlReader);
  }
  dlwDestroy(&dlWriter);
  dlrDestroy(&dlReader);
}
