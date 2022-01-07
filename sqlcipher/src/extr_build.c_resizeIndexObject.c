
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const* u8 ;
typedef int sqlite3 ;
typedef char const* i16 ;
struct TYPE_3__ {int nColumn; int isResized; char const** azColl; char const** aiColumn; char const** aSortOrder; } ;
typedef TYPE_1__ Index ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (char*,char const**,int) ;
 char* sqlite3DbMallocZero (int *,int) ;

__attribute__((used)) static int resizeIndexObject(sqlite3 *db, Index *pIdx, int N){
  char *zExtra;
  int nByte;
  if( pIdx->nColumn>=N ) return SQLITE_OK;
  assert( pIdx->isResized==0 );
  nByte = (sizeof(char*) + sizeof(i16) + 1)*N;
  zExtra = sqlite3DbMallocZero(db, nByte);
  if( zExtra==0 ) return SQLITE_NOMEM_BKPT;
  memcpy(zExtra, pIdx->azColl, sizeof(char*)*pIdx->nColumn);
  pIdx->azColl = (const char**)zExtra;
  zExtra += sizeof(char*)*N;
  memcpy(zExtra, pIdx->aiColumn, sizeof(i16)*pIdx->nColumn);
  pIdx->aiColumn = (i16*)zExtra;
  zExtra += sizeof(i16)*N;
  memcpy(zExtra, pIdx->aSortOrder, pIdx->nColumn);
  pIdx->aSortOrder = (u8*)zExtra;
  pIdx->nColumn = N;
  pIdx->isResized = 1;
  return SQLITE_OK;
}
