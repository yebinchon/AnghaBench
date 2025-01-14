
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nPendingData; int iPrevDocid; } ;
struct TYPE_8__ {scalar_t__ nData; } ;
typedef TYPE_1__ PendingList ;
typedef TYPE_2__ Fts3Table ;
typedef int Fts3HashElem ;
typedef int Fts3Hash ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ fts3HashFind (int *,char const*,int) ;
 TYPE_1__* fts3HashInsert (int *,char const*,int,TYPE_1__*) ;
 scalar_t__ fts3PendingListAppend (TYPE_1__**,int ,int,int,int*) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int fts3PendingTermsAddOne(
  Fts3Table *p,
  int iCol,
  int iPos,
  Fts3Hash *pHash,
  const char *zToken,
  int nToken
){
  PendingList *pList;
  int rc = SQLITE_OK;

  pList = (PendingList *)fts3HashFind(pHash, zToken, nToken);
  if( pList ){
    p->nPendingData -= (pList->nData + nToken + sizeof(Fts3HashElem));
  }
  if( fts3PendingListAppend(&pList, p->iPrevDocid, iCol, iPos, &rc) ){
    if( pList==fts3HashInsert(pHash, zToken, nToken, pList) ){



      assert( 0==fts3HashFind(pHash, zToken, nToken) );
      sqlite3_free(pList);
      rc = SQLITE_NOMEM;
    }
  }
  if( rc==SQLITE_OK ){
    p->nPendingData += (pList->nData + nToken + sizeof(Fts3HashElem));
  }
  return rc;
}
