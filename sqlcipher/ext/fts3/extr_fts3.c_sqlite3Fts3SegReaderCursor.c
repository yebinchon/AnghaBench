
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nIndex; } ;
typedef TYPE_1__ Fts3Table ;
typedef int Fts3MultiSegReader ;


 int FTS3_SEGCURSOR_ALL ;
 int FTS3_SEGCURSOR_PENDING ;
 int FTS3_SEGDIR_MAXLEVEL ;
 int assert (int) ;
 int fts3SegReaderCursor (TYPE_1__*,int,int,int,char const*,int,int,int,int *) ;
 int memset (int *,int ,int) ;

int sqlite3Fts3SegReaderCursor(
  Fts3Table *p,
  int iLangid,
  int iIndex,
  int iLevel,
  const char *zTerm,
  int nTerm,
  int isPrefix,
  int isScan,
  Fts3MultiSegReader *pCsr
){
  assert( iIndex>=0 && iIndex<p->nIndex );
  assert( iLevel==FTS3_SEGCURSOR_ALL
      || iLevel==FTS3_SEGCURSOR_PENDING
      || iLevel>=0
  );
  assert( iLevel<FTS3_SEGDIR_MAXLEVEL );
  assert( FTS3_SEGCURSOR_ALL<0 && FTS3_SEGCURSOR_PENDING<0 );
  assert( isPrefix==0 || isScan==0 );

  memset(pCsr, 0, sizeof(Fts3MultiSegReader));
  return fts3SegReaderCursor(
      p, iLangid, iIndex, iLevel, zTerm, nTerm, isPrefix, isScan, pCsr
  );
}
