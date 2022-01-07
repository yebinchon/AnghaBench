
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_6__ {int bPatchset; int nGroup; int ** apGroup; } ;
typedef int FuzzChangesetGroup ;
typedef TYPE_1__ FuzzChangeset ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fuzzParseChanges (char**,char*,TYPE_1__*) ;
 int fuzzParseHeader (TYPE_1__*,char**,char*,int **) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3_realloc64 (int **,int) ;

__attribute__((used)) static int fuzzParseChangeset(
  u8 *pChangeset,
  int nChangeset,
  FuzzChangeset *pParse
){
  u8 *pEnd = &pChangeset[nChangeset];
  u8 *p = pChangeset;
  int rc = SQLITE_OK;

  memset(pParse, 0, sizeof(FuzzChangeset));
  if( nChangeset>0 ){
    pParse->bPatchset = (pChangeset[0]=='P');
  }

  while( rc==SQLITE_OK && p<pEnd ){
    FuzzChangesetGroup *pGrp = 0;


    rc = fuzzParseHeader(pParse, &p, pEnd, &pGrp);
    assert( (rc==SQLITE_OK)==(pGrp!=0) );



    if( rc==SQLITE_OK ){
      FuzzChangesetGroup **apNew = (FuzzChangesetGroup**)sqlite3_realloc64(
          pParse->apGroup, sizeof(FuzzChangesetGroup*)*(pParse->nGroup+1)
      );
      if( apNew==0 ){
        rc = SQLITE_NOMEM;
      }else{
        apNew[pParse->nGroup] = pGrp;
        pParse->apGroup = apNew;
        pParse->nGroup++;
      }
      rc = fuzzParseChanges(&p, pEnd, pParse);
    }
  }

  return rc;
}
