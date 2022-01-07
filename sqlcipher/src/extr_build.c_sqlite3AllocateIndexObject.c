
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
typedef int i16 ;
struct TYPE_4__ {char const** azColl; int* aiColumn; int nColumn; int nKeyCol; int * aSortOrder; int * aiRowLogEst; } ;
typedef int LogEst ;
typedef TYPE_1__ Index ;


 int ROUND8 (int) ;
 TYPE_1__* sqlite3DbMallocZero (int *,int) ;

Index *sqlite3AllocateIndexObject(
  sqlite3 *db,
  i16 nCol,
  int nExtra,
  char **ppExtra
){
  Index *p;
  int nByte;

  nByte = ROUND8(sizeof(Index)) +
          ROUND8(sizeof(char*)*nCol) +
          ROUND8(sizeof(LogEst)*(nCol+1) +
                 sizeof(i16)*nCol +
                 sizeof(u8)*nCol);
  p = sqlite3DbMallocZero(db, nByte + nExtra);
  if( p ){
    char *pExtra = ((char*)p)+ROUND8(sizeof(Index));
    p->azColl = (const char**)pExtra; pExtra += ROUND8(sizeof(char*)*nCol);
    p->aiRowLogEst = (LogEst*)pExtra; pExtra += sizeof(LogEst)*(nCol+1);
    p->aiColumn = (i16*)pExtra; pExtra += sizeof(i16)*nCol;
    p->aSortOrder = (u8*)pExtra;
    p->nColumn = nCol;
    p->nKeyCol = nCol - 1;
    *ppExtra = ((char*)p) + nByte;
  }
  return p;
}
