
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {TYPE_1__** aSlot; int nSlot; } ;
struct TYPE_8__ {int nKey; int nData; struct TYPE_8__* pHashNext; } ;
typedef TYPE_1__ Fts5HashEntry ;
typedef TYPE_2__ Fts5Hash ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 char* fts5EntryKey (TYPE_1__*) ;
 scalar_t__ fts5HashAddPoslistSize (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 unsigned int fts5HashKey (int ,int const*,int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memcpy (int *,int *,int) ;
 void* sqlite3_malloc64 (int) ;
 scalar_t__ strlen (char*) ;

int sqlite3Fts5HashQuery(
  Fts5Hash *pHash,
  int nPre,
  const char *pTerm, int nTerm,
  void **ppOut,
  int *pnDoclist
){
  unsigned int iHash = fts5HashKey(pHash->nSlot, (const u8*)pTerm, nTerm);
  char *zKey = 0;
  Fts5HashEntry *p;

  for(p=pHash->aSlot[iHash]; p; p=p->pHashNext){
    zKey = fts5EntryKey(p);
    assert( p->nKey+1==(int)strlen(zKey) );
    if( nTerm==p->nKey+1 && memcmp(zKey, pTerm, nTerm)==0 ) break;
  }

  if( p ){
    int nHashPre = sizeof(Fts5HashEntry) + nTerm + 1;
    int nList = p->nData - nHashPre;
    u8 *pRet = (u8*)(*ppOut = sqlite3_malloc64(nPre + nList + 10));
    if( pRet ){
      Fts5HashEntry *pFaux = (Fts5HashEntry*)&pRet[nPre-nHashPre];
      memcpy(&pRet[nPre], &((u8*)p)[nHashPre], nList);
      nList += fts5HashAddPoslistSize(pHash, p, pFaux);
      *pnDoclist = nList;
    }else{
      *pnDoclist = 0;
      return SQLITE_NOMEM;
    }
  }else{
    *ppOut = 0;
    *pnDoclist = 0;
  }

  return SQLITE_OK;
}
