
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_3__ {int nSegment; int ** apSegment; } ;
typedef int Fts3SegReader ;
typedef TYPE_1__ Fts3MultiSegReader ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int sqlite3Fts3SegReaderFree (int *) ;
 scalar_t__ sqlite3_realloc64 (int **,int) ;

__attribute__((used)) static int fts3SegReaderCursorAppend(
  Fts3MultiSegReader *pCsr,
  Fts3SegReader *pNew
){
  if( (pCsr->nSegment%16)==0 ){
    Fts3SegReader **apNew;
    sqlite3_int64 nByte = (pCsr->nSegment + 16)*sizeof(Fts3SegReader*);
    apNew = (Fts3SegReader **)sqlite3_realloc64(pCsr->apSegment, nByte);
    if( !apNew ){
      sqlite3Fts3SegReaderFree(pNew);
      return SQLITE_NOMEM;
    }
    pCsr->apSegment = apNew;
  }
  pCsr->apSegment[pCsr->nSegment++] = pNew;
  return SQLITE_OK;
}
