
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pBlob; struct TYPE_6__* aNode; struct TYPE_6__* zTerm; } ;
typedef TYPE_1__ Fts3SegReader ;


 int fts3SegReaderIsPending (TYPE_1__*) ;
 int fts3SegReaderIsRootOnly (TYPE_1__*) ;
 int sqlite3_blob_close (int ) ;
 int sqlite3_free (TYPE_1__*) ;

void sqlite3Fts3SegReaderFree(Fts3SegReader *pReader){
  if( pReader ){
    if( !fts3SegReaderIsPending(pReader) ){
      sqlite3_free(pReader->zTerm);
    }
    if( !fts3SegReaderIsRootOnly(pReader) ){
      sqlite3_free(pReader->aNode);
    }
    sqlite3_blob_close(pReader->pBlob);
  }
  sqlite3_free(pReader);
}
