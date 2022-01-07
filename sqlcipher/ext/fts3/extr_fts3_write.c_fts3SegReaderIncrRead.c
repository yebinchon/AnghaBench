
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nNode; size_t nPopulate; scalar_t__ pBlob; int * aNode; } ;
typedef TYPE_1__ Fts3SegReader ;


 int FTS3_NODE_CHUNKSIZE ;
 int FTS3_NODE_PADDING ;
 int MIN (int ,int ) ;
 int SQLITE_OK ;
 int memset (int *,int ,int ) ;
 int sqlite3_blob_close (scalar_t__) ;
 int sqlite3_blob_read (scalar_t__,int *,int,size_t) ;

__attribute__((used)) static int fts3SegReaderIncrRead(Fts3SegReader *pReader){
  int nRead;
  int rc;

  nRead = MIN(pReader->nNode - pReader->nPopulate, FTS3_NODE_CHUNKSIZE);
  rc = sqlite3_blob_read(
      pReader->pBlob,
      &pReader->aNode[pReader->nPopulate],
      nRead,
      pReader->nPopulate
  );

  if( rc==SQLITE_OK ){
    pReader->nPopulate += nRead;
    memset(&pReader->aNode[pReader->nPopulate], 0, FTS3_NODE_PADDING);
    if( pReader->nPopulate==pReader->nNode ){
      sqlite3_blob_close(pReader->pBlob);
      pReader->pBlob = 0;
      pReader->nPopulate = 0;
    }
  }
  return rc;
}
