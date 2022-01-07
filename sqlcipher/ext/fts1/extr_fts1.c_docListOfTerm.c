
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_3__ {int nPhrase; int nTerm; int pTerm; } ;
typedef TYPE_1__ QueryTerm ;
typedef int DocList ;


 int DL_DOCIDS ;
 int DL_POSITIONS ;
 int SQLITE_OK ;
 int docListDelete (int *) ;
 int * docListNew (int ) ;
 int docListPhraseMerge (int *,int *,int *) ;
 int term_select_all (int *,int,int ,int ,int *) ;

__attribute__((used)) static int docListOfTerm(
  fulltext_vtab *v,
  int iColumn,
  QueryTerm *pQTerm,
  DocList **ppResult
){
  DocList *pLeft, *pRight, *pNew;
  int i, rc;

  pLeft = docListNew(DL_POSITIONS);
  rc = term_select_all(v, iColumn, pQTerm->pTerm, pQTerm->nTerm, pLeft);
  if( rc ){
    docListDelete(pLeft);
    return rc;
  }
  for(i=1; i<=pQTerm->nPhrase; i++){
    pRight = docListNew(DL_POSITIONS);
    rc = term_select_all(v, iColumn, pQTerm[i].pTerm, pQTerm[i].nTerm, pRight);
    if( rc ){
      docListDelete(pLeft);
      return rc;
    }
    pNew = docListNew(i<pQTerm->nPhrase ? DL_POSITIONS : DL_DOCIDS);
    docListPhraseMerge(pLeft, pRight, pNew);
    docListDelete(pLeft);
    docListDelete(pRight);
    pLeft = pNew;
  }
  *ppResult = pLeft;
  return SQLITE_OK;
}
