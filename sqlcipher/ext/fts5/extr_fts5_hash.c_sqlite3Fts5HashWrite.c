
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_int64 ;
typedef scalar_t__ i64 ;
typedef void* i16 ;
struct TYPE_11__ {scalar_t__ eDetail; int nSlot; int nEntry; int* pnByte; TYPE_1__** aSlot; } ;
struct TYPE_10__ {int nKey; int nAlloc; int nData; scalar_t__ iRowid; size_t iSzPoslist; int iCol; int iPos; int bContent; int bDel; struct TYPE_10__* pHashNext; } ;
typedef TYPE_1__ Fts5HashEntry ;
typedef TYPE_2__ Fts5Hash ;


 scalar_t__ FTS5_DETAIL_FULL ;
 scalar_t__ FTS5_DETAIL_NONE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 char* fts5EntryKey (TYPE_1__*) ;
 int fts5HashAddPoslistSize (TYPE_2__*,TYPE_1__*,int ) ;
 unsigned int fts5HashKey (int,int*,int) ;
 unsigned int fts5HashKey2 (int,int,int const*,int) ;
 int fts5HashResize (TYPE_2__*) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3Fts5PutVarint (int*,int) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 scalar_t__ sqlite3_realloc64 (TYPE_1__*,int) ;

int sqlite3Fts5HashWrite(
  Fts5Hash *pHash,
  i64 iRowid,
  int iCol,
  int iPos,
  char bByte,
  const char *pToken, int nToken
){
  unsigned int iHash;
  Fts5HashEntry *p;
  u8 *pPtr;
  int nIncr = 0;
  int bNew;

  bNew = (pHash->eDetail==FTS5_DETAIL_FULL);


  iHash = fts5HashKey2(pHash->nSlot, (u8)bByte, (const u8*)pToken, nToken);
  for(p=pHash->aSlot[iHash]; p; p=p->pHashNext){
    char *zKey = fts5EntryKey(p);
    if( zKey[0]==bByte
     && p->nKey==nToken
     && memcmp(&zKey[1], pToken, nToken)==0
    ){
      break;
    }
  }


  if( p==0 ){

    char *zKey;
    sqlite3_int64 nByte = sizeof(Fts5HashEntry) + (nToken+1) + 1 + 64;
    if( nByte<128 ) nByte = 128;


    if( (pHash->nEntry*2)>=pHash->nSlot ){
      int rc = fts5HashResize(pHash);
      if( rc!=SQLITE_OK ) return rc;
      iHash = fts5HashKey2(pHash->nSlot, (u8)bByte, (const u8*)pToken, nToken);
    }


    p = (Fts5HashEntry*)sqlite3_malloc64(nByte);
    if( !p ) return SQLITE_NOMEM;
    memset(p, 0, sizeof(Fts5HashEntry));
    p->nAlloc = (int)nByte;
    zKey = fts5EntryKey(p);
    zKey[0] = bByte;
    memcpy(&zKey[1], pToken, nToken);
    assert( iHash==fts5HashKey(pHash->nSlot, (u8*)zKey, nToken+1) );
    p->nKey = nToken;
    zKey[nToken+1] = '\0';
    p->nData = nToken+1 + 1 + sizeof(Fts5HashEntry);
    p->pHashNext = pHash->aSlot[iHash];
    pHash->aSlot[iHash] = p;
    pHash->nEntry++;


    p->nData += sqlite3Fts5PutVarint(&((u8*)p)[p->nData], iRowid);
    p->iRowid = iRowid;

    p->iSzPoslist = p->nData;
    if( pHash->eDetail!=FTS5_DETAIL_NONE ){
      p->nData += 1;
      p->iCol = (pHash->eDetail==FTS5_DETAIL_FULL ? 0 : -1);
    }

    nIncr += p->nData;
  }else{
    if( (p->nAlloc - p->nData) < (9 + 4 + 1 + 3 + 5) ){
      sqlite3_int64 nNew = p->nAlloc * 2;
      Fts5HashEntry *pNew;
      Fts5HashEntry **pp;
      pNew = (Fts5HashEntry*)sqlite3_realloc64(p, nNew);
      if( pNew==0 ) return SQLITE_NOMEM;
      pNew->nAlloc = (int)nNew;
      for(pp=&pHash->aSlot[iHash]; *pp!=p; pp=&(*pp)->pHashNext);
      *pp = pNew;
      p = pNew;
    }
    nIncr -= p->nData;
  }
  assert( (p->nAlloc - p->nData) >= (9 + 4 + 1 + 3 + 5) );

  pPtr = (u8*)p;



  if( iRowid!=p->iRowid ){
    fts5HashAddPoslistSize(pHash, p, 0);
    p->nData += sqlite3Fts5PutVarint(&pPtr[p->nData], iRowid - p->iRowid);
    p->iRowid = iRowid;
    bNew = 1;
    p->iSzPoslist = p->nData;
    if( pHash->eDetail!=FTS5_DETAIL_NONE ){
      p->nData += 1;
      p->iCol = (pHash->eDetail==FTS5_DETAIL_FULL ? 0 : -1);
      p->iPos = 0;
    }
  }

  if( iCol>=0 ){
    if( pHash->eDetail==FTS5_DETAIL_NONE ){
      p->bContent = 1;
    }else{

      assert( iCol>=p->iCol );
      if( iCol!=p->iCol ){
        if( pHash->eDetail==FTS5_DETAIL_FULL ){
          pPtr[p->nData++] = 0x01;
          p->nData += sqlite3Fts5PutVarint(&pPtr[p->nData], iCol);
          p->iCol = (i16)iCol;
          p->iPos = 0;
        }else{
          bNew = 1;
          p->iCol = (i16)(iPos = iCol);
        }
      }


      if( bNew ){
        p->nData += sqlite3Fts5PutVarint(&pPtr[p->nData], iPos - p->iPos + 2);
        p->iPos = iPos;
      }
    }
  }else{

    p->bDel = 1;
  }

  nIncr += p->nData;
  *pHash->pnByte += nIncr;
  return SQLITE_OK;
}
