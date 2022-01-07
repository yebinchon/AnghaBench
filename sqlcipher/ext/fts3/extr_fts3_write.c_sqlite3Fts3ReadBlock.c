
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_3__ {scalar_t__ zSegmentsTbl; scalar_t__ pSegments; int zDb; int db; int zName; } ;
typedef TYPE_1__ Fts3Table ;


 int FTS3_NODE_CHUNKSIZE ;
 int FTS3_NODE_CHUNK_THRESHOLD ;
 scalar_t__ FTS3_NODE_PADDING ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int*) ;
 int memset (char*,int ,scalar_t__) ;
 int sqlite3_blob_bytes (scalar_t__) ;
 int sqlite3_blob_open (int ,int ,scalar_t__,char*,int ,int ,scalar_t__*) ;
 int sqlite3_blob_read (scalar_t__,char*,int,int ) ;
 int sqlite3_blob_reopen (scalar_t__,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc (scalar_t__) ;
 scalar_t__ sqlite3_mprintf (char*,int ) ;

int sqlite3Fts3ReadBlock(
  Fts3Table *p,
  sqlite3_int64 iBlockid,
  char **paBlob,
  int *pnBlob,
  int *pnLoad
){
  int rc;


  assert( pnBlob );

  if( p->pSegments ){
    rc = sqlite3_blob_reopen(p->pSegments, iBlockid);
  }else{
    if( 0==p->zSegmentsTbl ){
      p->zSegmentsTbl = sqlite3_mprintf("%s_segments", p->zName);
      if( 0==p->zSegmentsTbl ) return SQLITE_NOMEM;
    }
    rc = sqlite3_blob_open(
       p->db, p->zDb, p->zSegmentsTbl, "block", iBlockid, 0, &p->pSegments
    );
  }

  if( rc==SQLITE_OK ){
    int nByte = sqlite3_blob_bytes(p->pSegments);
    *pnBlob = nByte;
    if( paBlob ){
      char *aByte = sqlite3_malloc(nByte + FTS3_NODE_PADDING);
      if( !aByte ){
        rc = SQLITE_NOMEM;
      }else{
        if( pnLoad && nByte>(FTS3_NODE_CHUNK_THRESHOLD) ){
          nByte = FTS3_NODE_CHUNKSIZE;
          *pnLoad = nByte;
        }
        rc = sqlite3_blob_read(p->pSegments, aByte, nByte, 0);
        memset(&aByte[nByte], 0, FTS3_NODE_PADDING);
        if( rc!=SQLITE_OK ){
          sqlite3_free(aByte);
          aByte = 0;
        }
      }
      *paBlob = aByte;
    }
  }

  return rc;
}
