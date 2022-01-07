
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;
typedef int Fts3Table ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3GetVarint32 (char const*,int*) ;
 int fts3ScanInteriorNode (char const*,int,char const*,int,scalar_t__*,scalar_t__*) ;
 int sqlite3Fts3ReadBlock (int *,scalar_t__,char**,int*,int ) ;
 int sqlite3_free (char*) ;

__attribute__((used)) static int fts3SelectLeaf(
  Fts3Table *p,
  const char *zTerm,
  int nTerm,
  const char *zNode,
  int nNode,
  sqlite3_int64 *piLeaf,
  sqlite3_int64 *piLeaf2
){
  int rc = SQLITE_OK;
  int iHeight;

  assert( piLeaf || piLeaf2 );

  fts3GetVarint32(zNode, &iHeight);
  rc = fts3ScanInteriorNode(zTerm, nTerm, zNode, nNode, piLeaf, piLeaf2);
  assert( !piLeaf2 || !piLeaf || rc!=SQLITE_OK || (*piLeaf<=*piLeaf2) );

  if( rc==SQLITE_OK && iHeight>1 ){
    char *zBlob = 0;
    int nBlob = 0;

    if( piLeaf && piLeaf2 && (*piLeaf!=*piLeaf2) ){
      rc = sqlite3Fts3ReadBlock(p, *piLeaf, &zBlob, &nBlob, 0);
      if( rc==SQLITE_OK ){
        rc = fts3SelectLeaf(p, zTerm, nTerm, zBlob, nBlob, piLeaf, 0);
      }
      sqlite3_free(zBlob);
      piLeaf = 0;
      zBlob = 0;
    }

    if( rc==SQLITE_OK ){
      rc = sqlite3Fts3ReadBlock(p, piLeaf?*piLeaf:*piLeaf2, &zBlob, &nBlob, 0);
    }
    if( rc==SQLITE_OK ){
      rc = fts3SelectLeaf(p, zTerm, nTerm, zBlob, nBlob, piLeaf, piLeaf2);
    }
    sqlite3_free(zBlob);
  }

  return rc;
}
