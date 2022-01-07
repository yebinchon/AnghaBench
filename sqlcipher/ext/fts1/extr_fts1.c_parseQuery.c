
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pTokenizer; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_8__ {int nextColumn; int dfltColumn; TYPE_1__* pFts; scalar_t__ nextIsOr; int * pTerms; scalar_t__ nTerms; } ;
typedef TYPE_2__ Query ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int queryClear (TYPE_2__*) ;
 int strlen (char const*) ;
 int tokenizeSegment (int ,char const*,int,int,TYPE_2__*) ;

__attribute__((used)) static int parseQuery(
  fulltext_vtab *v,
  const char *zInput,
  int nInput,
  int dfltColumn,
  Query *pQuery
){
  int iInput, inPhrase = 0;

  if( zInput==0 ) nInput = 0;
  if( nInput<0 ) nInput = strlen(zInput);
  pQuery->nTerms = 0;
  pQuery->pTerms = ((void*)0);
  pQuery->nextIsOr = 0;
  pQuery->nextColumn = dfltColumn;
  pQuery->dfltColumn = dfltColumn;
  pQuery->pFts = v;

  for(iInput=0; iInput<nInput; ++iInput){
    int i;
    for(i=iInput; i<nInput && zInput[i]!='"'; ++i){}
    if( i>iInput ){
      tokenizeSegment(v->pTokenizer, zInput+iInput, i-iInput, inPhrase,
                       pQuery);
    }
    iInput = i;
    if( i<nInput ){
      assert( zInput[i]=='"' );
      inPhrase = !inPhrase;
    }
  }

  if( inPhrase ){

    queryClear(pQuery);
    return SQLITE_ERROR;
  }
  return SQLITE_OK;
}
