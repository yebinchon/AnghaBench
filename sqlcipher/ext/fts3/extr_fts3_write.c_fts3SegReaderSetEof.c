
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aNode; scalar_t__ pBlob; } ;
typedef TYPE_1__ Fts3SegReader ;


 int fts3SegReaderIsRootOnly (TYPE_1__*) ;
 int sqlite3_blob_close (scalar_t__) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void fts3SegReaderSetEof(Fts3SegReader *pSeg){
  if( !fts3SegReaderIsRootOnly(pSeg) ){
    sqlite3_free(pSeg->aNode);
    sqlite3_blob_close(pSeg->pBlob);
    pSeg->pBlob = 0;
  }
  pSeg->aNode = 0;
}
