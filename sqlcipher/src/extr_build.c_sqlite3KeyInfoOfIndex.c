
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int nColumn; int nKeyCol; char** azColl; int bNoQuery; int * aSortOrder; scalar_t__ uniqNotNull; } ;
struct TYPE_12__ {int * aSortOrder; int * aColl; } ;
struct TYPE_11__ {scalar_t__ rc; scalar_t__ nErr; int db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ KeyInfo ;
typedef TYPE_3__ Index ;


 scalar_t__ SQLITE_ERROR_MISSING_COLLSEQ ;
 scalar_t__ SQLITE_ERROR_RETRY ;
 int assert (int) ;
 TYPE_2__* sqlite3KeyInfoAlloc (int ,int,int) ;
 int sqlite3KeyInfoIsWriteable (TYPE_2__*) ;
 int sqlite3KeyInfoUnref (TYPE_2__*) ;
 int sqlite3LocateCollSeq (TYPE_1__*,char const*) ;
 char const* sqlite3StrBINARY ;

KeyInfo *sqlite3KeyInfoOfIndex(Parse *pParse, Index *pIdx){
  int i;
  int nCol = pIdx->nColumn;
  int nKey = pIdx->nKeyCol;
  KeyInfo *pKey;
  if( pParse->nErr ) return 0;
  if( pIdx->uniqNotNull ){
    pKey = sqlite3KeyInfoAlloc(pParse->db, nKey, nCol-nKey);
  }else{
    pKey = sqlite3KeyInfoAlloc(pParse->db, nCol, 0);
  }
  if( pKey ){
    assert( sqlite3KeyInfoIsWriteable(pKey) );
    for(i=0; i<nCol; i++){
      const char *zColl = pIdx->azColl[i];
      pKey->aColl[i] = zColl==sqlite3StrBINARY ? 0 :
                        sqlite3LocateCollSeq(pParse, zColl);
      pKey->aSortOrder[i] = pIdx->aSortOrder[i];
    }
    if( pParse->nErr ){
      assert( pParse->rc==SQLITE_ERROR_MISSING_COLLSEQ );
      if( pIdx->bNoQuery==0 ){







        pIdx->bNoQuery = 1;
        pParse->rc = SQLITE_ERROR_RETRY;
      }
      sqlite3KeyInfoUnref(pKey);
      pKey = 0;
    }
  }
  return pKey;
}
