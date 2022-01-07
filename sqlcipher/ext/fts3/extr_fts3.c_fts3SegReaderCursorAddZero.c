
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts3Table ;
typedef int Fts3MultiSegReader ;


 int FTS3_SEGCURSOR_ALL ;
 int fts3SegReaderCursor (int *,int,int ,int ,char const*,int,int ,int ,int *) ;

__attribute__((used)) static int fts3SegReaderCursorAddZero(
  Fts3Table *p,
  int iLangid,
  const char *zTerm,
  int nTerm,
  Fts3MultiSegReader *pCsr
){
  return fts3SegReaderCursor(p,
      iLangid, 0, FTS3_SEGCURSOR_ALL, zTerm, nTerm, 0, 0,pCsr
  );
}
