#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int sqlite3_int64 ;
typedef  scalar_t__ i64 ;
typedef  void* i16 ;
struct TYPE_11__ {scalar_t__ eDetail; int nSlot; int nEntry; int* pnByte; TYPE_1__** aSlot; } ;
struct TYPE_10__ {int nKey; int nAlloc; int nData; scalar_t__ iRowid; size_t iSzPoslist; int iCol; int iPos; int bContent; int bDel; struct TYPE_10__* pHashNext; } ;
typedef  TYPE_1__ Fts5HashEntry ;
typedef  TYPE_2__ Fts5Hash ;

/* Variables and functions */
 scalar_t__ FTS5_DETAIL_FULL ; 
 scalar_t__ FTS5_DETAIL_NONE ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int,int*,int) ; 
 unsigned int FUNC4 (int,int,int const*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 

int FUNC12(
  Fts5Hash *pHash,
  i64 iRowid,                     /* Rowid for this entry */
  int iCol,                       /* Column token appears in (-ve -> delete) */
  int iPos,                       /* Position of token within column */
  char bByte,                     /* First byte of token */
  const char *pToken, int nToken  /* Token to add or remove to or from index */
){
  unsigned int iHash;
  Fts5HashEntry *p;
  u8 *pPtr;
  int nIncr = 0;                  /* Amount to increment (*pHash->pnByte) by */
  int bNew;                       /* If non-delete entry should be written */
  
  bNew = (pHash->eDetail==FTS5_DETAIL_FULL);

  /* Attempt to locate an existing hash entry */
  iHash = FUNC4(pHash->nSlot, (u8)bByte, (const u8*)pToken, nToken);
  for(p=pHash->aSlot[iHash]; p; p=p->pHashNext){
    char *zKey = FUNC1(p);
    if( zKey[0]==bByte 
     && p->nKey==nToken
     && FUNC6(&zKey[1], pToken, nToken)==0 
    ){
      break;
    }
  }

  /* If an existing hash entry cannot be found, create a new one. */
  if( p==0 ){
    /* Figure out how much space to allocate */
    char *zKey;
    sqlite3_int64 nByte = sizeof(Fts5HashEntry) + (nToken+1) + 1 + 64;
    if( nByte<128 ) nByte = 128;

    /* Grow the Fts5Hash.aSlot[] array if necessary. */
    if( (pHash->nEntry*2)>=pHash->nSlot ){
      int rc = FUNC5(pHash);
      if( rc!=SQLITE_OK ) return rc;
      iHash = FUNC4(pHash->nSlot, (u8)bByte, (const u8*)pToken, nToken);
    }

    /* Allocate new Fts5HashEntry and add it to the hash table. */
    p = (Fts5HashEntry*)FUNC10(nByte);
    if( !p ) return SQLITE_NOMEM;
    FUNC8(p, 0, sizeof(Fts5HashEntry));
    p->nAlloc = (int)nByte;
    zKey = FUNC1(p);
    zKey[0] = bByte;
    FUNC7(&zKey[1], pToken, nToken);
    FUNC0( iHash==FUNC3(pHash->nSlot, (u8*)zKey, nToken+1) );
    p->nKey = nToken;
    zKey[nToken+1] = '\0';
    p->nData = nToken+1 + 1 + sizeof(Fts5HashEntry);
    p->pHashNext = pHash->aSlot[iHash];
    pHash->aSlot[iHash] = p;
    pHash->nEntry++;

    /* Add the first rowid field to the hash-entry */
    p->nData += FUNC9(&((u8*)p)[p->nData], iRowid);
    p->iRowid = iRowid;

    p->iSzPoslist = p->nData;
    if( pHash->eDetail!=FTS5_DETAIL_NONE ){
      p->nData += 1;
      p->iCol = (pHash->eDetail==FTS5_DETAIL_FULL ? 0 : -1);
    }

    nIncr += p->nData;
  }else{

    /* Appending to an existing hash-entry. Check that there is enough 
    ** space to append the largest possible new entry. Worst case scenario 
    ** is:
    **
    **     + 9 bytes for a new rowid,
    **     + 4 byte reserved for the "poslist size" varint.
    **     + 1 byte for a "new column" byte,
    **     + 3 bytes for a new column number (16-bit max) as a varint,
    **     + 5 bytes for the new position offset (32-bit max).
    */
    if( (p->nAlloc - p->nData) < (9 + 4 + 1 + 3 + 5) ){
      sqlite3_int64 nNew = p->nAlloc * 2;
      Fts5HashEntry *pNew;
      Fts5HashEntry **pp;
      pNew = (Fts5HashEntry*)FUNC11(p, nNew);
      if( pNew==0 ) return SQLITE_NOMEM;
      pNew->nAlloc = (int)nNew;
      for(pp=&pHash->aSlot[iHash]; *pp!=p; pp=&(*pp)->pHashNext);
      *pp = pNew;
      p = pNew;
    }
    nIncr -= p->nData;
  }
  FUNC0( (p->nAlloc - p->nData) >= (9 + 4 + 1 + 3 + 5) );

  pPtr = (u8*)p;

  /* If this is a new rowid, append the 4-byte size field for the previous
  ** entry, and the new rowid for this entry.  */
  if( iRowid!=p->iRowid ){
    FUNC2(pHash, p, 0);
    p->nData += FUNC9(&pPtr[p->nData], iRowid - p->iRowid);
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
      /* Append a new column value, if necessary */
      FUNC0( iCol>=p->iCol );
      if( iCol!=p->iCol ){
        if( pHash->eDetail==FTS5_DETAIL_FULL ){
          pPtr[p->nData++] = 0x01;
          p->nData += FUNC9(&pPtr[p->nData], iCol);
          p->iCol = (i16)iCol;
          p->iPos = 0;
        }else{
          bNew = 1;
          p->iCol = (i16)(iPos = iCol);
        }
      }

      /* Append the new position offset, if necessary */
      if( bNew ){
        p->nData += FUNC9(&pPtr[p->nData], iPos - p->iPos + 2);
        p->iPos = iPos;
      }
    }
  }else{
    /* This is a delete. Set the delete flag. */
    p->bDel = 1;
  }

  nIncr += p->nData;
  *pHash->pnByte += nIncr;
  return SQLITE_OK;
}