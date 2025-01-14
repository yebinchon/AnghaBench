
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int nSlot; TYPE_1__** aSlot; } ;
struct TYPE_7__ {struct TYPE_7__* pHashNext; } ;
typedef TYPE_1__ Fts5HashEntry ;
typedef TYPE_2__ Fts5Hash ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ fts5EntryKey (TYPE_1__*) ;
 unsigned int fts5HashKey (int,int *,int) ;
 int memset (TYPE_1__**,int ,int) ;
 int sqlite3_free (TYPE_1__**) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int fts5HashResize(Fts5Hash *pHash){
  int nNew = pHash->nSlot*2;
  int i;
  Fts5HashEntry **apNew;
  Fts5HashEntry **apOld = pHash->aSlot;

  apNew = (Fts5HashEntry**)sqlite3_malloc64(nNew*sizeof(Fts5HashEntry*));
  if( !apNew ) return SQLITE_NOMEM;
  memset(apNew, 0, nNew*sizeof(Fts5HashEntry*));

  for(i=0; i<pHash->nSlot; i++){
    while( apOld[i] ){
      unsigned int iHash;
      Fts5HashEntry *p = apOld[i];
      apOld[i] = p->pHashNext;
      iHash = fts5HashKey(nNew, (u8*)fts5EntryKey(p),
                          (int)strlen(fts5EntryKey(p)));
      p->pHashNext = apNew[iHash];
      apNew[iHash] = p;
    }
  }

  sqlite3_free(apOld);
  pHash->nSlot = nNew;
  pHash->aSlot = apNew;
  return SQLITE_OK;
}
