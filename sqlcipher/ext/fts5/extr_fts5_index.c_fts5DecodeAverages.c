
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int Fts5Buffer ;


 int sqlite3Fts5BufferAppendPrintf (int*,int *,char*,char const*,int) ;
 scalar_t__ sqlite3Fts5GetVarint (int const*,scalar_t__*) ;

__attribute__((used)) static void fts5DecodeAverages(
  int *pRc,
  Fts5Buffer *pBuf,
  const u8 *pBlob, int nBlob
){
  int i = 0;
  const char *zSpace = "";

  while( i<nBlob ){
    u64 iVal;
    i += sqlite3Fts5GetVarint(&pBlob[i], &iVal);
    sqlite3Fts5BufferAppendPrintf(pRc, pBuf, "%s%d", zSpace, (int)iVal);
    zSpace = " ";
  }
}
