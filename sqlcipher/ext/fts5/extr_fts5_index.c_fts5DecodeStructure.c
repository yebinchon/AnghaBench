
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Fts5Structure ;
typedef int Fts5Buffer ;


 int SQLITE_OK ;
 int fts5DebugStructure (int*,int *,int *) ;
 int fts5StructureDecode (int const*,int,int ,int **) ;
 int fts5StructureRelease (int *) ;

__attribute__((used)) static void fts5DecodeStructure(
  int *pRc,
  Fts5Buffer *pBuf,
  const u8 *pBlob, int nBlob
){
  int rc;
  Fts5Structure *p = 0;

  rc = fts5StructureDecode(pBlob, nBlob, 0, &p);
  if( rc!=SQLITE_OK ){
    *pRc = rc;
    return;
  }

  fts5DebugStructure(pRc, pBuf, p);
  fts5StructureRelease(p);
}
