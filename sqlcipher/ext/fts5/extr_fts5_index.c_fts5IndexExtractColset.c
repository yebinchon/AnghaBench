
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int nCol; int * aiCol; } ;
typedef TYPE_1__ Fts5Colset ;
typedef int Fts5Buffer ;


 int SQLITE_OK ;
 int fts5BufferAppendBlob (int*,int *,int,int const*) ;
 int fts5BufferZero (int *) ;
 int fts5IndexExtractCol (int const**,int,int ) ;

__attribute__((used)) static void fts5IndexExtractColset(
  int *pRc,
  Fts5Colset *pColset,
  const u8 *pPos, int nPos,
  Fts5Buffer *pBuf
){
  if( *pRc==SQLITE_OK ){
    int i;
    fts5BufferZero(pBuf);
    for(i=0; i<pColset->nCol; i++){
      const u8 *pSub = pPos;
      int nSub = fts5IndexExtractCol(&pSub, nPos, pColset->aiCol[i]);
      if( nSub ){
        fts5BufferAppendBlob(pRc, pBuf, nSub, pSub);
      }
    }
  }
}
