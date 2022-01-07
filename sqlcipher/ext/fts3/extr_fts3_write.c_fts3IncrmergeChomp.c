
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_6__ {int nSegment; TYPE_1__** apSegment; } ;
struct TYPE_5__ {int iIdx; scalar_t__ aNode; char* zTerm; int nTerm; } ;
typedef int Fts3Table ;
typedef TYPE_1__ Fts3SegReader ;
typedef TYPE_2__ Fts3MultiSegReader ;


 scalar_t__ ALWAYS (int) ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3DeleteSegment (int *,TYPE_1__*) ;
 int fts3RemoveSegdirEntry (int *,int ,int) ;
 int fts3RepackSegdirLevel (int *,int ) ;
 int fts3TruncateSegment (int *,int ,int,char const*,int) ;

__attribute__((used)) static int fts3IncrmergeChomp(
  Fts3Table *p,
  sqlite3_int64 iAbsLevel,
  Fts3MultiSegReader *pCsr,
  int *pnRem
){
  int i;
  int nRem = 0;
  int rc = SQLITE_OK;

  for(i=pCsr->nSegment-1; i>=0 && rc==SQLITE_OK; i--){
    Fts3SegReader *pSeg = 0;
    int j;



    for(j=0; ALWAYS(j<pCsr->nSegment); j++){
      pSeg = pCsr->apSegment[j];
      if( pSeg->iIdx==i ) break;
    }
    assert( j<pCsr->nSegment && pSeg->iIdx==i );

    if( pSeg->aNode==0 ){

      rc = fts3DeleteSegment(p, pSeg);
      if( rc==SQLITE_OK ){
        rc = fts3RemoveSegdirEntry(p, iAbsLevel, pSeg->iIdx);
      }
      *pnRem = 0;
    }else{



      const char *zTerm = pSeg->zTerm;
      int nTerm = pSeg->nTerm;
      rc = fts3TruncateSegment(p, iAbsLevel, pSeg->iIdx, zTerm, nTerm);
      nRem++;
    }
  }

  if( rc==SQLITE_OK && nRem!=pCsr->nSegment ){
    rc = fts3RepackSegdirLevel(p, iAbsLevel);
  }

  *pnRem = nRem;
  return rc;
}
