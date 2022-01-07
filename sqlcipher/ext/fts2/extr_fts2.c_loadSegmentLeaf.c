
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fulltext_vtab ;
typedef int LeavesReader ;
typedef int DataBuffer ;


 int SQLITE_OK ;
 int assert (int) ;
 int leavesReaderDestroy (int *) ;
 int leavesReaderInit (int *,int ,int ,int ,char const*,int,int *) ;
 int leavesReaderReset (int *) ;
 int loadSegmentLeavesInt (int *,int *,char const*,int,int,int *) ;

__attribute__((used)) static int loadSegmentLeaf(fulltext_vtab *v, const char *pData, int nData,
                           const char *pTerm, int nTerm, int isPrefix,
                           DataBuffer *out){
  LeavesReader reader;
  int rc;

  assert( nData>1 );
  assert( *pData=='\0' );
  rc = leavesReaderInit(v, 0, 0, 0, pData, nData, &reader);
  if( rc!=SQLITE_OK ) return rc;

  rc = loadSegmentLeavesInt(v, &reader, pTerm, nTerm, isPrefix, out);
  leavesReaderReset(&reader);
  leavesReaderDestroy(&reader);
  return rc;
}
