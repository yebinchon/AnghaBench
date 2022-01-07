
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int i64 ;
struct TYPE_10__ {int nCol; scalar_t__ eContent; scalar_t__ bColumnsize; } ;
struct TYPE_9__ {int * pIndex; TYPE_2__* pConfig; int * aTotalSize; } ;
typedef TYPE_1__ Fts5Storage ;
typedef int Fts5Index ;
typedef TYPE_2__ Fts5Config ;


 scalar_t__ FTS5_CONTENT_NORMAL ;
 int FTS5_CURRENT_VERSION ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_1__*,int ,size_t) ;
 int sqlite3Fts5CreateTable (TYPE_2__*,char*,char*,int,char**) ;
 int sqlite3Fts5StorageClose (TYPE_1__*) ;
 int sqlite3Fts5StorageConfigValue (TYPE_1__*,char*,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;
 int sqlite3_snprintf (int,char*,char*,...) ;
 scalar_t__ strlen (char*) ;

int sqlite3Fts5StorageOpen(
  Fts5Config *pConfig,
  Fts5Index *pIndex,
  int bCreate,
  Fts5Storage **pp,
  char **pzErr
){
  int rc = SQLITE_OK;
  Fts5Storage *p;
  sqlite3_int64 nByte;

  nByte = sizeof(Fts5Storage)
        + pConfig->nCol * sizeof(i64);
  *pp = p = (Fts5Storage*)sqlite3_malloc64(nByte);
  if( !p ) return SQLITE_NOMEM;

  memset(p, 0, (size_t)nByte);
  p->aTotalSize = (i64*)&p[1];
  p->pConfig = pConfig;
  p->pIndex = pIndex;

  if( bCreate ){
    if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
      int nDefn = 32 + pConfig->nCol*10;
      char *zDefn = sqlite3_malloc64(32 + (sqlite3_int64)pConfig->nCol * 10);
      if( zDefn==0 ){
        rc = SQLITE_NOMEM;
      }else{
        int i;
        int iOff;
        sqlite3_snprintf(nDefn, zDefn, "id INTEGER PRIMARY KEY");
        iOff = (int)strlen(zDefn);
        for(i=0; i<pConfig->nCol; i++){
          sqlite3_snprintf(nDefn-iOff, &zDefn[iOff], ", c%d", i);
          iOff += (int)strlen(&zDefn[iOff]);
        }
        rc = sqlite3Fts5CreateTable(pConfig, "content", zDefn, 0, pzErr);
      }
      sqlite3_free(zDefn);
    }

    if( rc==SQLITE_OK && pConfig->bColumnsize ){
      rc = sqlite3Fts5CreateTable(
          pConfig, "docsize", "id INTEGER PRIMARY KEY, sz BLOB", 0, pzErr
      );
    }
    if( rc==SQLITE_OK ){
      rc = sqlite3Fts5CreateTable(
          pConfig, "config", "k PRIMARY KEY, v", 1, pzErr
      );
    }
    if( rc==SQLITE_OK ){
      rc = sqlite3Fts5StorageConfigValue(p, "version", 0, FTS5_CURRENT_VERSION);
    }
  }

  if( rc ){
    sqlite3Fts5StorageClose(p);
    *pp = 0;
  }
  return rc;
}
