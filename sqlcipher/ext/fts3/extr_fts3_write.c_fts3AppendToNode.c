
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; char* a; int nAlloc; } ;
typedef TYPE_1__ Blob ;


 int SQLITE_OK ;
 int assert (int) ;
 int blobGrowBuffer (TYPE_1__*,int,int*) ;
 int fts3PrefixCompress (char*,int,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ sqlite3Fts3PutVarint (char*,int) ;

__attribute__((used)) static int fts3AppendToNode(
  Blob *pNode,
  Blob *pPrev,
  const char *zTerm,
  int nTerm,
  const char *aDoclist,
  int nDoclist
){
  int rc = SQLITE_OK;
  int bFirst = (pPrev->n==0);
  int nPrefix;
  int nSuffix;



  assert( pNode->n>0 );
  assert( (pNode->a[0]=='\0')==(aDoclist!=0) );

  blobGrowBuffer(pPrev, nTerm, &rc);
  if( rc!=SQLITE_OK ) return rc;

  nPrefix = fts3PrefixCompress(pPrev->a, pPrev->n, zTerm, nTerm);
  nSuffix = nTerm - nPrefix;
  memcpy(pPrev->a, zTerm, nTerm);
  pPrev->n = nTerm;

  if( bFirst==0 ){
    pNode->n += sqlite3Fts3PutVarint(&pNode->a[pNode->n], nPrefix);
  }
  pNode->n += sqlite3Fts3PutVarint(&pNode->a[pNode->n], nSuffix);
  memcpy(&pNode->a[pNode->n], &zTerm[nPrefix], nSuffix);
  pNode->n += nSuffix;

  if( aDoclist ){
    pNode->n += sqlite3Fts3PutVarint(&pNode->a[pNode->n], nDoclist);
    memcpy(&pNode->a[pNode->n], aDoclist, nDoclist);
    pNode->n += nDoclist;
  }

  assert( pNode->n<=pNode->nAlloc );

  return SQLITE_OK;
}
