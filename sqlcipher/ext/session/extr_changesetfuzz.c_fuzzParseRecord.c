
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int nGroup; int nVal; int ** apVal; TYPE_1__** apGroup; } ;
struct TYPE_4__ {int nCol; scalar_t__* aPK; } ;
typedef TYPE_1__ FuzzChangesetGroup ;
typedef TYPE_2__ FuzzChangeset ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fuzzChangeSize (int *,int*) ;
 int fuzzCorrupt () ;
 scalar_t__ sqlite3_realloc (int **,int) ;

__attribute__((used)) static int fuzzParseRecord(
  u8 **ppRec,
  u8 *pEnd,
  FuzzChangeset *pParse,
  int bPkOnly
){
  int rc = SQLITE_OK;
  FuzzChangesetGroup *pGrp = pParse->apGroup[pParse->nGroup-1];
  int i;
  u8 *p = *ppRec;

  for(i=0; rc==SQLITE_OK && i<pGrp->nCol; i++){
    if( bPkOnly==0 || pGrp->aPK[i] ){
      int sz;
      if( p>=pEnd ) break;
      if( (pParse->nVal & (pParse->nVal-1))==0 ){
        int nNew = pParse->nVal ? pParse->nVal*2 : 4;
        u8 **apNew = (u8**)sqlite3_realloc(pParse->apVal, nNew*sizeof(u8*));
        if( apNew==0 ) return SQLITE_NOMEM;
        pParse->apVal = apNew;
      }
      pParse->apVal[pParse->nVal++] = p;
      rc = fuzzChangeSize(p, &sz);
      p += sz;
    }
  }

  if( rc==SQLITE_OK && i<pGrp->nCol ){
    rc = fuzzCorrupt();
  }

  *ppRec = p;
  return rc;
}
