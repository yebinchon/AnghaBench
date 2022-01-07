
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite_int64 ;
typedef int fulltext_vtab ;
typedef int LeavesReader ;
typedef int DataBuffer ;


 int SQLITE_OK ;
 int assert (int) ;
 int leavesReaderDestroy (int *) ;
 int leavesReaderInit (int *,int ,scalar_t__,scalar_t__,int *,int ,int *) ;
 int leavesReaderReset (int *) ;
 int loadSegmentLeavesInt (int *,int *,char const*,int,int,int *) ;

__attribute__((used)) static int loadSegmentLeaves(fulltext_vtab *v,
                             sqlite_int64 iStartLeaf, sqlite_int64 iEndLeaf,
                             const char *pTerm, int nTerm, int isPrefix,
                             DataBuffer *out){
  int rc;
  LeavesReader reader;

  assert( iStartLeaf<=iEndLeaf );
  rc = leavesReaderInit(v, 0, iStartLeaf, iEndLeaf, ((void*)0), 0, &reader);
  if( rc!=SQLITE_OK ) return rc;

  rc = loadSegmentLeavesInt(v, &reader, pTerm, nTerm, isPrefix, out);
  leavesReaderReset(&reader);
  leavesReaderDestroy(&reader);
  return rc;
}
