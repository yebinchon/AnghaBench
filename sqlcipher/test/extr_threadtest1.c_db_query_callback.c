
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct QueryResult {int nElem; int nAlloc; char* zFile; int * azElem; } ;


 int fprintf (int ,char*,char*) ;
 int * realloc (int *,int) ;
 int sqlite3_mprintf (char*,char*) ;
 int stdout ;

__attribute__((used)) static int db_query_callback(
  void *pUser,
  int nArg,
  char **azArg,
  char **NotUsed
){
  struct QueryResult *pResult = (struct QueryResult*)pUser;
  int i;
  if( pResult->nElem + nArg >= pResult->nAlloc ){
    if( pResult->nAlloc==0 ){
      pResult->nAlloc = nArg+1;
    }else{
      pResult->nAlloc = pResult->nAlloc*2 + nArg + 1;
    }
    pResult->azElem = realloc( pResult->azElem, pResult->nAlloc*sizeof(char*));
    if( pResult->azElem==0 ){
      fprintf(stdout,"%s: malloc failed\n", pResult->zFile);
      return 1;
    }
  }
  if( azArg==0 ) return 0;
  for(i=0; i<nArg; i++){
    pResult->azElem[pResult->nElem++] =
        sqlite3_mprintf("%s",azArg[i] ? azArg[i] : "");
  }
  return 0;
}
