
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_3__ {int n; int nAlloc; char* z; } ;
typedef TYPE_1__ StrBuffer ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 char* sqlite3_realloc64 (char*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fts3StringAppend(
  StrBuffer *pStr,
  const char *zAppend,
  int nAppend
){
  if( nAppend<0 ){
    nAppend = (int)strlen(zAppend);
  }





  if( pStr->n+nAppend+1>=pStr->nAlloc ){
    sqlite3_int64 nAlloc = pStr->nAlloc+(sqlite3_int64)nAppend+100;
    char *zNew = sqlite3_realloc64(pStr->z, nAlloc);
    if( !zNew ){
      return SQLITE_NOMEM;
    }
    pStr->z = zNew;
    pStr->nAlloc = nAlloc;
  }
  assert( pStr->z!=0 && (pStr->nAlloc >= pStr->n+nAppend+1) );


  memcpy(&pStr->z[pStr->n], zAppend, nAppend);
  pStr->n += nAppend;
  pStr->z[pStr->n] = '\0';

  return SQLITE_OK;
}
