
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_blob ;
typedef int i64 ;
struct TYPE_10__ {int zDb; int db; } ;
struct TYPE_9__ {int nn; int* p; int szLeaf; } ;
struct TYPE_8__ {int rc; int nRead; int * pReader; int zDataTbl; TYPE_3__* pConfig; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Data ;
typedef TYPE_3__ Fts5Config ;


 int FTS5_CORRUPT ;
 scalar_t__ FTS5_DATA_PADDING ;
 int SQLITE_ABORT ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5CloseReader (TYPE_1__*) ;
 int fts5GetU16 (int*) ;
 int sqlite3_blob_bytes (int *) ;
 int sqlite3_blob_open (int ,int ,int ,char*,int ,int ,int **) ;
 int sqlite3_blob_read (int *,int*,int,int ) ;
 int sqlite3_blob_reopen (int *,int ) ;
 int sqlite3_free (TYPE_2__*) ;
 scalar_t__ sqlite3_malloc64 (scalar_t__) ;

__attribute__((used)) static Fts5Data *fts5DataRead(Fts5Index *p, i64 iRowid){
  Fts5Data *pRet = 0;
  if( p->rc==SQLITE_OK ){
    int rc = SQLITE_OK;

    if( p->pReader ){



      sqlite3_blob *pBlob = p->pReader;
      p->pReader = 0;
      rc = sqlite3_blob_reopen(pBlob, iRowid);
      assert( p->pReader==0 );
      p->pReader = pBlob;
      if( rc!=SQLITE_OK ){
        fts5CloseReader(p);
      }
      if( rc==SQLITE_ABORT ) rc = SQLITE_OK;
    }



    if( p->pReader==0 && rc==SQLITE_OK ){
      Fts5Config *pConfig = p->pConfig;
      rc = sqlite3_blob_open(pConfig->db,
          pConfig->zDb, p->zDataTbl, "block", iRowid, 0, &p->pReader
      );
    }






    if( rc==SQLITE_ERROR ) rc = FTS5_CORRUPT;

    if( rc==SQLITE_OK ){
      u8 *aOut = 0;
      int nByte = sqlite3_blob_bytes(p->pReader);
      sqlite3_int64 nAlloc = sizeof(Fts5Data) + nByte + FTS5_DATA_PADDING;
      pRet = (Fts5Data*)sqlite3_malloc64(nAlloc);
      if( pRet ){
        pRet->nn = nByte;
        aOut = pRet->p = (u8*)&pRet[1];
      }else{
        rc = SQLITE_NOMEM;
      }

      if( rc==SQLITE_OK ){
        rc = sqlite3_blob_read(p->pReader, aOut, nByte, 0);
      }
      if( rc!=SQLITE_OK ){
        sqlite3_free(pRet);
        pRet = 0;
      }else{

        pRet->p[nByte] = 0x00;
        pRet->szLeaf = fts5GetU16(&pRet->p[2]);
      }
    }
    p->rc = rc;
    p->nRead++;
  }

  assert( (pRet==0)==(p->rc!=SQLITE_OK) );
  return pRet;
}
