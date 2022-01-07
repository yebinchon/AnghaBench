
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_blob ;
struct TYPE_5__ {int zDb; int db; } ;
struct TYPE_4__ {int rc; int zDataTbl; TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Config ;


 int FTS5_STRUCTURE_ROWID ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts5Put32 (int *,int) ;
 int sqlite3_blob_close (int *) ;
 int sqlite3_blob_open (int ,int ,int ,char*,int ,int,int **) ;
 int sqlite3_blob_write (int *,int *,int,int ) ;

int sqlite3Fts5IndexSetCookie(Fts5Index *p, int iNew){
  int rc;
  Fts5Config *pConfig = p->pConfig;
  u8 aCookie[4];
  sqlite3_blob *pBlob = 0;

  assert( p->rc==SQLITE_OK );
  sqlite3Fts5Put32(aCookie, iNew);

  rc = sqlite3_blob_open(pConfig->db, pConfig->zDb, p->zDataTbl,
      "block", FTS5_STRUCTURE_ROWID, 1, &pBlob
  );
  if( rc==SQLITE_OK ){
    sqlite3_blob_write(pBlob, aCookie, 4, 0);
    rc = sqlite3_blob_close(pBlob);
  }

  return rc;
}
