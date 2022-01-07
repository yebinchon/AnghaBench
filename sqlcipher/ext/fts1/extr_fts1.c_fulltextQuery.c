
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_8__ {int nTerms; TYPE_1__* pTerms; } ;
struct TYPE_7__ {int nPhrase; int iColumn; scalar_t__ isNot; scalar_t__ isOr; } ;
typedef TYPE_1__ QueryTerm ;
typedef TYPE_2__ Query ;
typedef int DocList ;


 int DL_DOCIDS ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int docListAndMerge (int *,int *,int *) ;
 int docListDelete (int *) ;
 int docListExceptMerge (int *,int *,int *) ;
 int * docListNew (int ) ;
 int docListOfTerm (int *,int ,TYPE_1__*,int **) ;
 int docListOrMerge (int *,int *,int *) ;
 int parseQuery (int *,char const*,int,int,TYPE_2__*) ;
 int queryClear (TYPE_2__*) ;

__attribute__((used)) static int fulltextQuery(
  fulltext_vtab *v,
  int iColumn,
  const char *zInput,
  int nInput,
  DocList **pResult,
  Query *pQuery
){
  int i, iNext, rc;
  DocList *pLeft = ((void*)0);
  DocList *pRight, *pNew, *pOr;
  int nNot = 0;
  QueryTerm *aTerm;

  rc = parseQuery(v, zInput, nInput, iColumn, pQuery);
  if( rc!=SQLITE_OK ) return rc;


  aTerm = pQuery->pTerms;
  for(i = 0; i<pQuery->nTerms; i=iNext){
    if( aTerm[i].isNot ){

      nNot++;
      iNext = i + aTerm[i].nPhrase+1;
      continue;
    }
    iNext = i + aTerm[i].nPhrase + 1;
    rc = docListOfTerm(v, aTerm[i].iColumn, &aTerm[i], &pRight);
    if( rc ){
      queryClear(pQuery);
      return rc;
    }
    while( iNext<pQuery->nTerms && aTerm[iNext].isOr ){
      rc = docListOfTerm(v, aTerm[iNext].iColumn, &aTerm[iNext], &pOr);
      iNext += aTerm[iNext].nPhrase + 1;
      if( rc ){
        queryClear(pQuery);
        return rc;
      }
      pNew = docListNew(DL_DOCIDS);
      docListOrMerge(pRight, pOr, pNew);
      docListDelete(pRight);
      docListDelete(pOr);
      pRight = pNew;
    }
    if( pLeft==0 ){
      pLeft = pRight;
    }else{
      pNew = docListNew(DL_DOCIDS);
      docListAndMerge(pLeft, pRight, pNew);
      docListDelete(pRight);
      docListDelete(pLeft);
      pLeft = pNew;
    }
  }

  if( nNot && pLeft==0 ){

    return SQLITE_ERROR;
  }


  for(i=0; i<pQuery->nTerms; i += aTerm[i].nPhrase + 1){
    if( !aTerm[i].isNot ) continue;
    rc = docListOfTerm(v, aTerm[i].iColumn, &aTerm[i], &pRight);
    if( rc ){
      queryClear(pQuery);
      docListDelete(pLeft);
      return rc;
    }
    pNew = docListNew(DL_DOCIDS);
    docListExceptMerge(pLeft, pRight, pNew);
    docListDelete(pRight);
    docListDelete(pLeft);
    pLeft = pNew;
  }

  *pResult = pLeft;
  return rc;
}
