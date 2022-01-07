
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {TYPE_1__* pScan; } ;
struct TYPE_7__ {int nData; } ;
typedef TYPE_1__ Fts5HashEntry ;
typedef TYPE_2__ Fts5Hash ;


 char* fts5EntryKey (TYPE_1__*) ;
 int fts5HashAddPoslistSize (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ strlen (char*) ;

void sqlite3Fts5HashScanEntry(
  Fts5Hash *pHash,
  const char **pzTerm,
  const u8 **ppDoclist,
  int *pnDoclist
){
  Fts5HashEntry *p;
  if( (p = pHash->pScan) ){
    char *zKey = fts5EntryKey(p);
    int nTerm = (int)strlen(zKey);
    fts5HashAddPoslistSize(pHash, p, 0);
    *pzTerm = zKey;
    *ppDoclist = (const u8*)&zKey[nTerm+1];
    *pnDoclist = p->nData - (sizeof(Fts5HashEntry) + nTerm + 1);
  }else{
    *pzTerm = 0;
    *ppDoclist = 0;
    *pnDoclist = 0;
  }
}
