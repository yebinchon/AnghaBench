
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* aAll; int nAll; } ;
struct TYPE_8__ {int iDoclistToken; TYPE_1__ doclist; } ;
struct TYPE_7__ {int bDescIdx; } ;
typedef TYPE_2__ Fts3Table ;
typedef TYPE_3__ Fts3Phrase ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3DoclistPhraseMerge (int ,int,char*,int,char**,int*) ;
 int sqlite3_free (char*) ;

__attribute__((used)) static int fts3EvalPhraseMergeToken(
  Fts3Table *pTab,
  Fts3Phrase *p,
  int iToken,
  char *pList,
  int nList
){
  int rc = SQLITE_OK;
  assert( iToken!=p->iDoclistToken );

  if( pList==0 ){
    sqlite3_free(p->doclist.aAll);
    p->doclist.aAll = 0;
    p->doclist.nAll = 0;
  }

  else if( p->iDoclistToken<0 ){
    p->doclist.aAll = pList;
    p->doclist.nAll = nList;
  }

  else if( p->doclist.aAll==0 ){
    sqlite3_free(pList);
  }

  else {
    char *pLeft;
    char *pRight;
    int nLeft;
    int nRight;
    int nDiff;

    if( p->iDoclistToken<iToken ){
      pLeft = p->doclist.aAll;
      nLeft = p->doclist.nAll;
      pRight = pList;
      nRight = nList;
      nDiff = iToken - p->iDoclistToken;
    }else{
      pRight = p->doclist.aAll;
      nRight = p->doclist.nAll;
      pLeft = pList;
      nLeft = nList;
      nDiff = p->iDoclistToken - iToken;
    }

    rc = fts3DoclistPhraseMerge(
        pTab->bDescIdx, nDiff, pLeft, nLeft, &pRight, &nRight
    );
    sqlite3_free(pLeft);
    p->doclist.aAll = pRight;
    p->doclist.nAll = nRight;
  }

  if( iToken>p->iDoclistToken ) p->iDoclistToken = iToken;
  return rc;
}
